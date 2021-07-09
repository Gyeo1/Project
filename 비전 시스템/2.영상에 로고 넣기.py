import cv2 as cv

img= cv.imread('Lenna.jpg',cv.IMREAD_COLOR)
logo=cv.imread('opncv.png',cv.IMREAD_COLOR)
#로고 그림을 회색으로 바꾼다
gray_logo=cv.cvtColor(logo,cv.COLOR_BGR2GRAY)

#threshold를 Binary로하면 10의 임계값을 넘는 화소들은 255즉 흰색으로 표현된다
ret,mask=cv.threshold(gray_logo,10,255,cv.THRESH_BINARY)
mask= ~mask  # 색을 반전(위대로 하면 배경이 검은색이됨 즉 배경을 흰색으로 나머지 그림은 검은색으로 해줘 아래 add연산을 편하게함.)

#로고의 높이 너비를 shape로 잡아줌
logo_h,logo_w=logo.shape[:2]

roi=img[0:logo_h,0:logo_w]#관심영역을 로고 높이 , 너비만큼 설정

#cv.add연산은 한계값을 넘어가면 특정값으로 계산한다.
roi_logo = cv.add(logo, roi, mask=mask); #logo를 roi그림에 mask영역으로 마스킹함 즉 roi그림에 logo의 검은색 그림만남는다.

#마스킹으로 인한 roi_logo와 logo를 cv.add해주면 roi_logo의 검은부분에만 색이들어온다.
#로고의 배경은 검은색,roi_logo의 그림에도 검은색이있다.
#검은색은 0이다==어떤값을 더해도 그값이 나옴
result=cv.add(roi_logo,logo)
img[0:logo_h,0:logo_w]=result #원본이미지에 위의 결과값 합침.
cv.imshow("mask_inv", img)
cv.waitKey(0)