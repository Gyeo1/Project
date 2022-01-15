# 1. Overview
* Achro-i.MX6Q의 여러가지 FPGA 디바이스와 GPIO를 사용한 가스 탐지 시스템
* VM(가상환경)을 활용한 임베디드 리눅스 포팅, 리눅스 C 환경에서의 개발을 위한 프로젝트

****
# 2. Language/Tools
## 2.1. Language
* C
## 2.2. Tools
![Achro-i MX6Q보드](https://user-images.githubusercontent.com/71872133/149617621-a6161b79-3472-4d47-baa8-eceadd5b2758.jpg)
* Achro-i.MX6Q 보드, Linux, VMware
* 다양한 센서(카메라, LCD, 가스 탐지)
****
# 3. 동작 과정
## 기본적인 동작 프로세스
* 가스 센서가 탐지 모드로 들어가면 Step 모터가 정상적으로 돌아감 (시계 방향)
* 공장의 한 sector에서 가스 탐지로 인해 센서 값이 변경 시 Buzzer가 울리며 LCD에 경보 Text 출력
* LED는 어떤 sector에 경보가 울렸는지 표기 + Step 모터는 동작이 멈추게 된다.

## 3.1 가스 탐지 전         
* 단순히 Step 모터가 시계 방향으로 돌고 있는 상태, 정상적이다.
           
## 3.2 가스 탐지                 
* 몇 번 구역에서 가스 탐지가 됐는지 LED가 켜짐
* 동시에 부저가 울리며 Step 모터가 정지
<img width="563" alt="image" src="https://user-images.githubusercontent.com/71872133/149616303-354d4501-69de-488a-aae3-7bd0930cae33.png">  
          
## 3.3 경보 해제
* 가스 탐지가 되지 않는다면 자동으로 경보 해제
* 만약 가스 탐지기 오작동으로 강제 종료시 push 스위치를 활용해 비밀 번호 입력. 비밀번호가 맞을시 부저 종료
<img width="598" alt="image" src="https://user-images.githubusercontent.com/71872133/149616364-8d638422-cc1d-41bd-882d-43cfcf1d1ad9.png">              

