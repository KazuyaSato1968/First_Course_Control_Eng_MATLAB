%�}9.10
%
clear all; close all;

%�`�B�֐��̕��q�E���ꑽ������^����
a = 1;
b = 1;
num = [ 0 1]; %���q������
den = [ 1 1 ]; %���ꑽ���� 

%���Q�C��Kp
Kp=1;

%�ϕ��Q�C��Ki��0����0.01���݂�10�܂ŕω�������
Ki=0:0.01:10;

%����n�̋�p(Kp,Ki)�D(9.25)��
p1=(-(a+b*Kp)+sqrt((a+b*Kp)^2-4*b*Ki))/2;
p2=(-(a+b*Kp)-sqrt((a+b*Kp)^2-4*b*Ki))/2;

%�}9.10�̃v���b�g
plot(p1,'b'); %���O�Ղ��v���b�g
hold on; %���݂̃v���b�g��ێ�
plot(p2,'r'); %���O�Ղ��v���b�g
hold off; %�v���b�g�̕ێ���Ԃ��I�t
grid; %�r����\��
xlabel('Re'); %�����̃��x���\��
ylabel('Im'), %�c���̃��x���\��
