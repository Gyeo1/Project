import cv2
import numpy as np


#글로벌 선언 = 초기값을 main문에다 설정을 해줘야됨.
def blue_callback(x):
    global b
    b = cv2.getTrackbarPos('blue','img')

def green_callback(x):
    global  g
    g = cv2.getTrackbarPos('green', 'img')

def red_callback(x):
    global  r
    r = cv2.getTrackbarPos('red', 'img')

def mouse_callback(event,x,y,flags,param):
    global drawing #글로벌 전역 변수설정
    if event == cv2.EVENT_LBUTTONDOWN:
        drawing=True
        cv2.circle(img,(x,y),10,(b,g,r),-1)

    elif event==cv2.EVENT_MOUSEMOVE and drawing==True:
        cv2.circle(img,(x,y),10,(b,g,r),-1)

    elif event==cv2.EVENT_LBUTTONUP:
        drawing=False
    cv2.imshow('img',img)

#글로벌 변수 초기화 drawing은 bool값 rgb는 int값
drawing=False
r=0
g=0
b=0

img=cv2.imread('Lenna.jpg',cv2.IMREAD_COLOR)
if img is None:
    print("이미지 파일을 읽을 수 없습니다.")
    exit(1)

cv2.imshow('img',img)
#트랙바를 만들고 윈도우에 추가하는 함수.
# ('생성된 트랙바 이름','부모 윈도우이름==이벤트 발생체크하는 윈도우',슬라이더의 위치반영 ,슬라이더 최대위치,콜백함수 포인터=0,호출되는 함수)
cv2.createTrackbar('blue','img',0,255,blue_callback)#그니깐 blue_callback이 콜백함수로 전달할 추가적인 정의 값임.
cv2.createTrackbar('green','img',0,255,green_callback)
cv2.createTrackbar('red','img',0,255,red_callback)
cv2.setTrackbarPos('blue','img',255) #지정된 트랙바의 슬라이더 위치를 설정한다

cv2.setMouseCallback('img',mouse_callback) #마우스 콜백 지정.
'''
while(1): #b g r이란 값을 읽을때
    #gettrackbarPos는 트랙바의 슬라이더 위치를 반환받는다.
    b = cv2.getTrackbarPos('blue','img')
    g = cv2.getTrackbarPos('green', 'img')
    r = cv2.getTrackbarPos('red', 'img')
    if cv2.waitKey(1)&0xFF==27:#esc 버튼 누르면 꺼짐
        break
        #숙제 while문을 없애버리고 nothing 이란 함수를 콜백 함수를 살려서 (3개의 색 함수)해보기.
        #왜? 창을 x로 닫거나 그러면 문제가 발생해서
        #해결방법 1.creatTrackbar의 인수에 콜백함수로 전달받는 인수의 콜백함수를 만든다
        #2.b,g,r 값이 사라지니 callback내의 b g r인수를 받아올수없음 =>callback함수에서 글로벌 변수로 b g r을 만들어줌
        #3.b,g,r값을 getTrackbarPos로 변할때마다 슬라이더 위치를 반환받는다
        #4.이때 반환받는값은 int값이므로 main문에서 0으로 초기화시켜준다 
        '''
cv2.waitKey(0)
cv2.destroyAllWindows()


