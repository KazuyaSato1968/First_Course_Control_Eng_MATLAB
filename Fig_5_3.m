%�}5.3
%
clear all; close all;

%�`�B�֐��̕��q�E���ꑽ������^����
num = [ 0 0 1 ]; %���q������
den1 = [ 1 2*0.08*1 1 ]; %y_a(t)�̕��ꑽ����
den2 = [ 1 2*0.3*1 1 ]; %y_b(t)�̕��ꑽ����
den3 = [ 1 2*1.5*1 1 ]; %y_c(t)�̕��ꑽ����

%�`�B�֐��\����^����
sys1 = tf( num,den1 ); %y_a(t)�̓`�B�֐��\��
sys2 = tf( num,den2 ); %y_b(t)�̓`�B�֐��\��
sys3 = tf( num,den3 ); %y_c(t)�̓`�B�֐��\��

%���ԕϐ��̒�`
t = 0:0.01:50; %0����50�܂�0.01����

%�X�e�b�v�����̌v�Z
[ y1 t1 ] = step( sys1, t ); %y_a(t)�̃X�e�b�v����
[ y2 t2 ] = step( sys2, t ); %y_b(t)�̃X�e�b�v����
[ y3 t3 ] = step( sys3, t ); %y_c(t)�̃X�e�b�v����

%�}5.3�̃v���b�g
plot(t1,y1,'-r',t2,y2,'-g',t3,y3,'-b'); %�X�e�b�v�������v���b�g
ylim([0,2]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('time  t [s]'); %�����̃��x���\��
ylabel('y(t)'); %�c���̃��x���\��
legend('y_a(t)','y_b(t)','y_c(t)'); %�}��̕\��