import cv2
import numpy as np
global point
def region_of_interest(img, vertices):  # ROI 셋팅
    mask = np.zeros_like(img)  # mask = img와 같은 크기의 빈 이미지
    if len(img.shape) > 2:  # Color 이미지(3채널)라면 :
        channel_count = img.shape[2]
        ignor_mask_color = (255,) * channel_count
    else:  # 흑백 이미지(1채널)라면 :
        ignor_mask_color = 255
    # vertices에 정한 점들로 이뤄진 다각형부분(ROI 설정부분)을 color로 채움
    cv2.fillPoly(mask, vertices, ignor_mask_color)
    # 이미지와 color로 채워진 ROI를 합침
    ROI_image = cv2.bitwise_and(img, mask)
    return ROI_image

def EditArray(src,ret):
    src_clone = cv2.GaussianBlur(src, (7, 7), 0)
    cdst = cv2.Canny(src_clone, 30, 200, None, 3)  # dst를 캐니 여기서 괄호는 각각(사진, 임계값1,임계값2) 이다 임계값 1이하면 가장자리 제외
    # cdst = cv.cvtColor(dst, cv.COLOR_GRAY2BGR) #캐니엣지 처리된 dst를 그레이 스케일로
    cdstP = np.copy(cdst)  # cdst의 똑같은 크기의 사진(배열)을 만듦

    #### 관심영역(ROI) 지정하는 부분
    imshape = src.shape
    vertices = np.array([[(0, 200),
                          (640, 200),
                          (640, 360),
                          (0, 360)]])
    mask = region_of_interest(cdst, vertices)  # edge중 관심영역만 가져옴
    return mask

def writeline(src,ret):
    mask = EditArray(src,ret)
    lines = cv2.HoughLines(mask, 1, np.pi / 180, 40)  # 관심영역에서 선을그림
    lines_img = np.zeros((src.shape[0], src.shape[1], 3), dtype=np.uint8)
    return [lines, lines_img]

def calculate(r,theta):
    a = np.cos(theta)
    b = np.sin(theta)
    x0 = a * r
    y0 = b * r
    x1 = int(x0 + 1000 * (-b))
    y1 = int(y0 + 1000 * (a))
    x2 = int(x0 - 1000 * (-b))
    y2 = int(y0 - 1000 * (a))
    return [x1,y1,x2,y2]

def searchspot(ListUpperZero, ListLowerZero,mask):
    point = 0
    try:
        px1 = int(np.mean(ListUpperZero[0]))  # 리스트에잇는것들 다 평균값 구함     #p로시작하는게 왼쪽직선  밑에m으로 시작하는게 오른쪽직선
        px2 = int(np.mean(ListUpperZero[1]))
        py1 = int(np.mean(ListUpperZero[2]))
        py2 = int(np.mean(ListUpperZero[3]))
        cv2.line(mask, (px1, py1), (px2, py2), (255, 255, 255), 2)
        # cv2.line(src, (px1, py1), (px2, py2), (255, 255, 255), 2)
    except ValueError:  # 직선이되는 경우의 수가 없어 zerodivision 오류가떠서 pass가 났다. 그럼 리스트에 아무 값도 들어있지 않아서 이것도 말이안됨 따라서, 이부분도 패스시켜줌
        point = 1
    try:
        mx1 = int(np.mean(ListLowerZero[0]))
        mx2 = int(np.mean(ListLowerZero[1]))
        my1 = int(np.mean(ListLowerZero[2]))
        my2 = int(np.mean(ListLowerZero[3]))
        if point == 1:
            xt = (mx1 + mx2) / 2
            yt = (my1 + my2) / 2
            if xt < 180:
                xt = xt + 180
        cv2.line(mask, (mx1, my1), (mx2, my2), (255, 255, 255), 2)
        # cv2.line(src, (mx1, my1), (mx2, my2), (255, 255, 255), 2)
    except ValueError:  # 직선이되는 경우의 수가 없어 zerodivision 오류가떠서 pass가 났다. 그럼 리스트에 아무 값도 들어있지 않아서 이것도 말이안됨 따라서, 이부분도 패스시켜줌
        try:
            xt = (px1 + px2) / 2
            yt = (py1 + py2) / 2
            if xt > 180:
                xt = xt - 180
        except ValueError:
            xt = -100001
            yt = -100001
            pass
    try:
        Pa = (py2 - py1) / (px2 - px1)  # 직선의 방정식을 이용하여 소실점 구하는 공식       좌측 직선 기울기
        Ma = (my2 - my1) / (mx2 - mx1)  # 직선의 방정식을 이용하여 소실점 구하는 공식       우측 직선 기울기

        # print(int(Pa*100))      #44,-85일때 직진중
        # print(int(Ma*100))
        xt = int(((Pa * px1) - py1 - (Ma * mx1) + my1) / (
                Pa - Ma))  # 직선의 방정식을 이용하여 소실점 구하는 공식      #이 xt yt가 소실점
        yt = int((Pa * (xt - px1)) + py1)  # 직선의 방정식을 이용하여 소실점 구하는 공식
        # print(xt)
        # print(yt)
        # if previous != direction:
        # flag = 1
        # else:
        # flag = 0
        # previous = direction
        # print("direction = %s, flag = %s" %(direction,flag))
        cv2.line(mask, (xt, yt), (xt, yt), (255, 0, 0), 9)  # 소실점  영상이 한쪽에 치우쳐져있어서 임시로 40을 저한거임
    except ValueError:  # 직선이되는 경우의 수가 없어 zerodivision 오류가떠서 pass가 났다. 그럼 리스트에 아무 값도 들어있지 않아서 이것도 말이안됨 따라서, 이부분도 패스시켜줌
        pass
    except NameError:  # 직선이되는 경우의 수가 없어 zerodivision 오류가떠서 pass가 났다. 그럼 리스트에 아무 값도 들어있지 않아서 이것도 말이안됨 따라서, 이부분도 패스시켜줌
        pass
    return [xt,yt]
def editline(lines,lines_img):
    sw = 0
    ListUpperZero = [[] for i in range(4)] # x1,x2,y1,y2순 선 중 양수성분
    ListLowerZero = [[] for i in range(4)]# 선 중 음수성분
    # print(len(lines))           #일순간의 허프변환을 통했을때 그 순간의 선의 길이?
    if lines is not None:
        for i in range(0, len(lines)):
            # x1,y1,x2,y2 -> 직선의 좌표구하는것(x1,y1) ~ (x2,y2)
            r, theta = lines[i][0]  # 허피 변환을 하면 직선이 나올수 있는 모든 경우의 수의 기울기를 뽑아줌
            [x1,y1,x2,y2] = calculate(r,theta)
            # 간혹 직선의 경우의수가 안뽑힐 때도있음, 실제 테스트 해보고 캐니엣지를 건드려줘야함 이럴때
            try:
                cv2.line(lines_img, (x1, y1), (x2, y2), (0, 255, 0), 2)
                if y1 > 0:
                    slope = abs(y2 - y1) / abs(x1 - x2)
                else:
                    slope = abs(y1 - y2) / abs(x1 - x2)
                if 0.1 < slope < 100:  # 1차적으로 쓸모없고 평균값 잡아먹는 말도안되는 기울기를 가진 직선을 1차적으로 필터링해줌
                    # if (y0 > 100 and x0 > 100) or (y0 < 100 and x0 < 100):
                    if y1 > 0:  # 이안에 들어있으면 우선 Y1과 Y2를 판별부터함 이게 섞여있어서 Y1이 양수일 때도 있고 음수일때도있음
                        # x 축은 무조건 x1  = -값 x2는 무조건 +값이라서 y1이 양수면 2사분면에서 4사분면, y1이 음수면 3사분면에서 1사분면으로 이동
                        # 이거를 따로따로 리스트에 전부 구해서 추가시켜줄거임
                        ListLowerZero[0].append(x2)
                        ListLowerZero[1].append(x1)
                        ListLowerZero[2].append(y2)
                        ListLowerZero[3].append(y1)
                        cv2.line(lines_img, (x1, y1), (x2, y2), (0, 0, 255), 2)
                    else:
                        ListUpperZero[0].append(x1)
                        ListUpperZero[1].append(x2)
                        ListUpperZero[2].append(y1)
                        ListUpperZero[3].append(y2)
                        cv2.line(lines_img, (x1, y1), (x2, y2), (255, 0, 0), 2)
                    # print(f' i = {i} x1 = {x1}, x2 = {x2} , y1 = {y1}, y2 = {y2} , y0 = {y0}, x0 = {x0}')
                    # print(f' i = {i} x1 = {x1}, x2 = {x2} , y1 = {y1}, y2 = {y2}')  여기
            except ZeroDivisionError:  # 직선이 되는 경우의수가 없는경우 그냥 건너뜀 어차피 while문안이고, 개빠르게 계산하기 때문에 금방 넘어감
                sw = 1
                ListUpperZero = [[] for i in range(4)]  # x1,x2,y1,y2순
                ListLowerZero = [[] for i in range(4)]
                continue
            [xt, yt] = searchspot(ListUpperZero, ListLowerZero)
        return [[sw,xt,yt],ListLowerZero, ListUpperZero]