# Lab 06

## �ǽ� ����

### **������ �۽�**

#### **nco module** : clk�� �߻�

#### **fnd_dec module** : 7bit �Է� ��ȣ�� �޾� 0~9������ ���ڷ�, 10 ~ 15������ ���ڴ� a,b,c,d,e,f ���� ���ĺ����� ���

#### **led_disp module** : 42bit six_digit_seg �Է� ��ȣ�� �޾�  6�ڸ��� ���� display

#### **ir_rx module** : 1M�� clk���� seq_rx	�� ���� cnt_h�� cnt_l�� ī��Ʈ.  cnt_h�� cnt_l�� ���ڸ� �������� state�� �����Ͽ�, ���������� �۽��� �����͸� �ľ�

#### **top module**:  ���� module�� �̿��Ͽ� �ǽ� ����� LED�� �´� Display Module ����

### Quartus �ǽ� : test bench�� �̿��Ͽ� module�� ������ Ȯ��

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_2.png)

state�� 00,11,01�� ��ȭ�ϴ� �� Ȯ��

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_3.png)

0�� ���� �ð��� ���� 0�� 1�� ���� 

### FPGA �ǽ� : �������� ��ư�� ���� 6���� LED�� ��ȭ�� 

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_4.png)

���ڿ� ���ĺ��� ��µ� ���� Ȯ��

![](https://github.com/dbwpdls22/logicDesign/blob/master/practice09/09_5.png)

�������� ��ư�� ���� ��°��� ��ȭ