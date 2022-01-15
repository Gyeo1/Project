# 1. Overview
* 4차 산업혁명을 맞이하여 급박하게 변하고 있는 분야는 바로 자동차이다. 세계보건기구(WHO)의 발표에 따르면 전 세계에서 매일 수백만 명이 교통사고로 다치고 3500명 이상이 사망한다. 미래의 자동차에는 정교하고 검증받은 자율주행 기술이 필수적인 요소가 될 것이다.   
* Python과 OpenCV을 사용하여 차선을 검출해내고 동시에 신호등의 상황을 인지하여 자율적으로 주행 의사결정을 하는 라즈베리파이 기반 자율주행 RC카를 제작했다. 또한 간단한 조작 UI를 제공하는 웹페이지를 통해 수동 제어가 가능하도록 구현하였고 라이다센서와 조도센서를 통한 거리조절 및 전조등 점등을 구현했다.
****
# 2. Structure
## 2.1. 프로그램 순서도
![프로그램_순서도](https://user-images.githubusercontent.com/71872133/149615250-44382c35-d6dd-4b45-8ca1-fc8385008acc.png)


## 2.2 자율주행/수동주행 모드간의 전환 기준
![2 자율주행_수동주행 모드간 전환기준](https://user-images.githubusercontent.com/71872133/149615258-27a72477-4428-4c6d-bf23-e6898e2cb5f4.png)


****
# 3. Language/Tools
## 3.1. Language
* Python
* Html, Css, Javascript
## 3.2. Tools
* PC - PythonCharm IDE
* Raspberry Pi - Python IDLE
* OpenCV library
****
# 4. Result
## 4.1 차선검출을 통한 방향 제어
![3 차선 검출을 통한 방향제어](https://user-images.githubusercontent.com/71872133/149615268-a6d5023f-5b53-4f15-ab16-945e7a68625b.png)  
* 주행 알고리즘         
![4 주행 모드시 정보 처리](https://user-images.githubusercontent.com/71872133/149615270-2aaa80cb-6e4c-43a6-b637-adf98341f182.gif)
* 차선검출/소실점 추출            
![5 차선을 따라 자율 주행](https://user-images.githubusercontent.com/71872133/149615277-0423e9db-daa9-45c2-8959-f5439be6f397.gif)
* 차선을 따라 자율주행   

## 4.2 신호등 색 검출을 통한 주행/정지
![6 파란불 신호를 인식_box 표시](https://user-images.githubusercontent.com/71872133/149615279-334ab26e-f151-4faf-93f9-7319415e045a.png) 
* 파란불 신호를 인식하여 box표시
 
## 4.3 직관적인 UI를 사용한 수동조작
![7 수동조작 모드](https://user-images.githubusercontent.com/71872133/149615301-579b24b1-d2eb-49b0-96e5-9b925664c695.jpg)
* Python Bottle Framework를 통한 수동 조작 UI 웹페이지 배포
****
# 5. Problem/Improve
## 5.1. 라즈베리파이의 연산량 한계 초과 이슈
* 프레임수가 높은 고성능의 웹캠에서 입력되는 연산 데이터들을 라즈베리파이가 감당하지 못하여서 주행이 **뚝뚝 끊기며** 부자연스럽게 동작하였다.
* 차선검출 로직의 main loop문에서 걸리는 부하를 해결하기위해 딜레이 함수를 통해 초당 처리 횟수를 줄였고 어느정도 움직임을 개선할 수 있었다.
* **GPU가 탑제된 영상처리 특화 MPU를 사용했다면 더욱 자연스러운 주행이 가능했을 것으로 예상된다.**

## 5.2. 자동차 스티어링의 부재
* 방향 전환을 함에 있어서 스티어링이 없었기에 모든 바퀴의 회전각을 통해 방향을 전환할 수 밖에 없었다.
* 스티어링이 구현된 자동차였다면 훨씬 간결한 코드로와 더욱 깔끔한 움직임이 가능할 것으로 예상된다.
