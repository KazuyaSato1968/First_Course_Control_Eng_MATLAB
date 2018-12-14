%�}12.10
%
clear all; close all;

%�p���g���͈̔͂��w��
w = logspace(-3, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-3}����10^{3}��1000�_)

%�}12.10�̃v���b�g
%G(s)�̕��q�E���ꑽ������^����
num = [ 0 10 10 ]; %G(s)�̕��q������
den = [ 1 10.1 1 ]; %G(s)�̕��ꑽ����

%�`�B�֐��\����^����
sys = tf( num, den ); %�`�B�֐��\��  

[ gain phase w ] = bode( sys, w ); %�Q�C���ƈʑ����ʂɋ��߂�
gain = gain(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gaindB = 20*log10(gain); %�Q�C�����f�V�x���l�ɕϊ�
phase = phase(:); % �ʑ��̔z���1�����x�N�g���ɕϊ�

subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(w, gaindB); %�Бΐ��O���t�ŃQ�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Gain [dB]'); %�c���̃��x���\��

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(w, phase); %�Бΐ��O���t�ňʑ����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-90 0]) %�c���͈̔͂̎w��
yticks([-90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��