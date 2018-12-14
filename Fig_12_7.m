%�}12.7
%
clear all; close all;

%�p���g���͈̔͂��w��
w = logspace(-3, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-3}����10^{3}��1000�_)

%�}12.7�̃v���b�g
%G_1(s)�̕��q�E���ꑽ������^����
num1 = [ 0 1 ]; %���v�f�̕��q������
den1 = [ 10 1 ]; %���v�f�̕��ꑽ����

%�`�B�֐��\����^����
sys1 = tf( num1, den1 ); %�`�B�֐��\��  

[ gain1 phase1 w1 ] = bode( sys1, w ); %�Q�C���ƈʑ����ʂɋ��߂�
gain1 = gain1(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gain1dB = 20*log10(gain1); %�Q�C�����f�V�x���l�ɕϊ�

semilogx(w1, gain1dB); %�Бΐ��O���t�ŃQ�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��