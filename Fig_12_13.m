%�}12.13
%
clear all; close all;

%G(s)�̕��q�E���ꑽ������^����
num = [ 0 0 1 ]; %���q������
den = [ 1 0.3 1 ]; %���ꑽ����

%�`�B�֐��\����^����
sys = tf( num, den ); %�`�B�֐��\��  

%�p���g���͈̔͂��w��
w = logspace(-2, 1, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-2}����10^{1}��1000�_)

%G(s)�̃Q�C���ƈʑ��̌v�Z
[ gain phase w ] = bode( sys, w ); %�Q�C���ƈʑ�
gain = gain(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gaindB = 20*log10(gain); %�Q�C�����f�V�x���l�ɕϊ�
phase = phase(:); % �ʑ��̔z���1�����x�N�g���ɕϊ�

%�}12.13�̃v���b�g
subplot(2,1,1) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���1�s�ڂƂ����Ӗ�
semilogx(w, gaindB); %�Q�C�����}���v���b�g
xlim([10^(-2),10^1]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 20]) %�c���͈̔͂̎w��
yticks([-40 -30 -20 -10 0 10 20]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Gain [dB]'); %�c���̃��x���\��

subplot(2,1,2) %�����̐}����ׂ邽�߂̃R�}���h�D2�s1���2�s�ڂƂ����Ӗ�
semilogx(w, phase); %�ʑ����}���v���b�g
xlim([10^(-2),10^1]) %�����i�p���g���j�͈̔͂̎w��
ylim([-180 0]) %�c���͈̔͂̎w��
yticks([-180 -135 -90 -45 0]) %�c���̖ڐ���̒l�̐ݒ�
grid; %�r����\��
xlabel('Frequency [rad/s]'); %�����̃��x���\��
ylabel('Phase [deg]'); %�c���̃��x���\��