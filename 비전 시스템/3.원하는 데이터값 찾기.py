import cv2
point_x1 = [] #명도 찾는 x,y포인터 배열 0으로 초기화.
point_y1 = []
point_x2 = [] # 색상찾는 x,y포인터 배열
point_y2 = []
check1=0
check2 = 0
a=0
b=0
c=0
d=0
img_color = cv2.imread('2016146007.png')
height, width = img_color.shape[:2]
img_hsv = cv2.cvtColor(img_color, cv2.COLOR_BGR2HSV) #HSV는 색조,채도,명도의 3가지 성분을 가짐

#명도 50인점 찾을때 HSV사용
for j in range(height):
    for i in range(width):
        if img_hsv[j, i, 2] <= 50: #나온 img는 [높이,너비,HSV성분]-> HSV성분 0=색상,1=채도,2=명도
            point_x1.append(i) #배열 추가
            point_y1.append(j) #배열 추가
            check1=check1+1;

#색상은 BGR사진에서 찾음
for j in range(height):
    for i in range(width):
        if img_color[j, i, 1] >= 250:#컬러이미지에서 bgr중 Green성분이 250이상인 점 찾기
            point_x2.append(i)
            point_y2.append(j)
            check2=check2+1;

#원그리는 코드
for k in range(check1):
    cv2.circle(img_color, (point_x1[a], point_y1[b]), 20, (0, 0, 255), 3) #명도 50이상인 픽셀에 빨간 원그림.
    a = a+1
    b = b+1
for k in range(check2):
    cv2.circle(img_color, (point_x2[c], point_y2[d]), 20, (0, 255, 0), 3) #초록색 성분 250이상인 곳에 초록원그림
    c=c+1
    d=d+1

cv2.imshow("img",img_color)
cv2.waitKey(0)
cv2.destroyAllWindows()