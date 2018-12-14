%�}6.12, �}6.13
%
clear all; close all;

%�p�����[�^�̒l��^����
A = 1; %A=1
phi = pi/6.0; %��=��/6
omega1 = 2.0 * pi; %��=2��
omega2 = 4.0 * pi; %��=4��
omega3 = 8.0 * pi; %��=8��

%���ԕϐ��̒�`
t = 0:0.001:2; %0����2�܂�0.001����

%�C���p���X�����̌v�Z
x0 = A * sin( omega1 * t + phi); %��=��/6, ��=2�΂̏ꍇ�̐����g
x1 = A * sin( omega1 * t + phi); %��=��/6, ��=2�΂̏ꍇ�̐����g
x2 = A * sin( omega2 * t + phi); %��=��/6, ��=4�΂̏ꍇ�̐����g
x3 = A * sin( omega3 * t + phi); %��=��/6, ��=8�΂̏ꍇ�̐����g

%�}6.12�̃v���b�g
figure(1); %�}�̃E�B���h�E���J��

plot(t,x0); %e^{at}�̒l���v���b�g
xlim([0,2.0]) %�����i���Ԏ��j�͈̔͂̎w��
xticks([0 0.5 1.0 1.5 2.0]) %�����̖ڐ���̒l�̐ݒ�
yticks([-1.0 -0.5 0 0.5 1.0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('time  t [s]'); %�����̃��x���\��
ylabel('x(t)'); %�c���̃��x���\��

%�}6.13�̃v���b�g
figure(2); %�}�̃E�B���h�E���J��

plot(t,x1,'-b',t,x2,'-g',t,x3,'-r'); %�ւ̒l�ɉ�����x(t)���v���b�g
xlim([0,1.0]) %�����i���Ԏ��j�͈̔͂̎w��
xticks([0 0.5 1.0 1.5 2.0]) %�����̖ڐ���̒l�̐ݒ�
yticks([-1.0 -0.8 -0.6 -0.4 -0.2 0 0.2 0.4 0.6 0.8 1.0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('time  t [s]'); %�����̃��x���\��
ylabel('x(t)'); %�c���̃��x���\��
legend('��=2��','��=4��','��=8��'); %�}��̕\��