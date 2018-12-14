%�}12.6
%
clear all; close all;

%���v�fK�̕��q�E���ꑽ������^����
numK = [ 10 ]; %���v�f�̕��q������
denK = [ 1 ]; %���v�f�̕��ꑽ����

%G_1(s)�̕��q�E���ꑽ������^����
num1 = [ 0 1 ]; %G_1(s)�̕��q������
den1 = [ 10 1 ]; %G_2(s)�̕��ꑽ����

%G_2(s)�̕��q�E���ꑽ������^����
num2 = [ 1 1 ]; %G_2(s)�̕��q������
den2 = [ 0 1 ]; %G_2(s)�̕��ꑽ����

%G_3(s)�̕��q�E���ꑽ������^����
num3 = [ 0 1 ]; %G_3(s)�̕��q������
den3 = [ 0.1 1 ]; %G_3(s)�̕��ꑽ����

%�`�B�֐��\����^����
sysK = tf( numK, denK ); %K�̓`�B�֐��\�� 
sys1 = tf( num1, den1 ); %G_1(s)�̓`�B�֐��\��
sys2 = tf( num2, den2 ); %G_2(s)�̓`�B�֐��\��
sys3 = tf( num3, den3 ); %G_3(s)�̓`�B�֐��\��

%�p���g���͈̔͂��w��
w = logspace(-3, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-3}����10^{3}��1000�_)

%���v�f�̃Q�C���ƈʑ��̌v�Z
[ gainK phaseK wK ] = bode( sysK, w ); %�Q�C���ƈʑ�
gainK = gainK(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gainKdB = 20*log10(gainK); %�Q�C�����f�V�x���l�ɕϊ�
phaseK = phaseK(:); % �ʑ��̔z���1�����x�N�g���ɕϊ�

%G_1(s)�̃Q�C���ƈʑ��̌v�Z
[ gain1 phase1 w1 ] = bode( sys1, w ); %�Q�C���ƈʑ�
gain1 = gain1(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gain1dB = 20*log10(gain1); %�Q�C�����f�V�x���l�ɕϊ�
phase1 = phase1(:); % �ʑ��̔z���1�����x�N�g���ɕϊ�

%G_2(s)�̃Q�C���ƈʑ��̌v�Z
[ gain2 phase2 w2 ] = bode( sys2, w ); %�Q�C���ƈʑ�
gain2 = gain2(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gain2dB = 20*log10(gain2); %�Q�C�����f�V�x���l�ɕϊ�
phase2 = phase2(:); % �ʑ��̔z���1�����x�N�g���ɕϊ�

%G_3(s)�̃Q�C���ƈʑ��̌v�Z
[ gain3 phase3 w3 ] = bode( sys3, w ); %�Q�C���ƈʑ�
gain3 = gain3(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gain3dB = 20*log10(gain3); %�Q�C�����f�V�x���l�ɕϊ�
phase3 = phase3(:); % �ʑ��̔z���1�����x�N�g���ɕϊ�

%�}12.6�̃v���b�g
figure(1) %�}�̃E�B���h�E���J��
subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(wK, gainKdB); %�Q�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��
title('Bode diagram of K')

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(wK, phaseK); %�ʑ����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-90 0]) %�c���͈̔͂̎w��
yticks([-90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��

%�}12.7�̃v���b�g
figure(2) %�}�̃E�B���h�E���J��
subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(w1, gain1dB); %�Q�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��
title('Bode diagram of G_1(s)')

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(w1, phase1); %�ʑ����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-90 0]) %�c���͈̔͂̎w��
yticks([-90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��

%�}12.8�̃v���b�g
figure(3) %�}�̃E�B���h�E���J��
subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(w2, gain2dB); %�Бΐ��O���t�ŃQ�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��
title('Bode diagram of G_2(s)')

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(w2, phase2); %�ʑ����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-90 0]) %�c���͈̔͂̎w��
yticks([-90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��

%�}12.9�̃v���b�g
figure(4) %�}�̃E�B���h�E���J��
subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(w3, gain3dB); %�Q�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��
title('Bode diagram of G_3(s)')

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(w3, phase3); %�ʑ����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-90 0]) %�c���͈̔͂̎w��
yticks([-90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��

%�}12.10�̃v���b�g
figure(5) %�}�̃E�B���h�E���J��
subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(w3, gainKdB + gain1dB + gain2dB + gain3dB); %�Q�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��
title('Bode diagram of G(s)')

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(w3, phaseK + phase1 + phase2 + phase3); %�ʑ����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-90 0]) %�c���͈̔͂̎w��
yticks([-90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��
