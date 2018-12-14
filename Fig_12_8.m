%�}12.8
%
clear all; close all;

%�p���g���͈̔͂��w��
w = logspace(-3, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-3}����10^{3}��1000�_)

%�}12.8�̃v���b�g
%G_2(s)�̕��q�E���ꑽ������^����
num2 = [ 1 1 ]; %G_2(s)�̕��q������
den2 = [ 0 1 ]; %G_2(s)�̕��ꑽ����

%�`�B�֐��\����^����
sys2 = tf( num2, den2 ); %�`�B�֐��\��  

[ gain2 phase2 w2 ] = bode( sys2, w ); %�Q�C���ƈʑ����ʂɋ��߂�
gain2 = gain2(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gain2dB = 20*log10(gain2); %�Q�C�����f�V�x���l�ɕϊ�

semilogx(w2, gain2dB); %�Бΐ��O���t�ŃQ�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��