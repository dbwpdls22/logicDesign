# Lab 06

## 실습 내용

### **리모컨 송신**

#### **nco module** : clk을 발생

#### **fnd_dec module** : 7bit 입력 신호를 받아 0~9까지는 숫자로, 10 ~ 15까지의 숫자는 a,b,c,d,e,f 순의 알파벳으로 출력

#### **led_disp module** : 42bit six_digit_seg 입력 신호를 받아  6자리의 숫자 display

#### **ir_rx module** : 1M의 clk에서 seq_rx	를 통해 cnt_h와 cnt_l를 카운트.  cnt_h와 cnt_l의 숫자를 기준으로 state를 구분하여, 리모컨에서 송신한 데이터를 파악

#### **top module**:  위의 module를 이용하여 실습 장비의 LED에 맞는 Display Module 설계

### Quartus 실습 : test bench를 이용하여 module의 웨이프 확인

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_2.png)

state가 00,11,01로 변화하는 것 확인

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_3.png)

0의 유지 시간을 통해 0과 1을 구분 

### FPGA 실습 : 리모컨의 버튼에 따라 6개의 LED가 변화함 

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_4.png)

숫자와 알파벳이 출력된 것을 확인

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_5.png)

리모컨의 버튼에 따라 출력값이 변화