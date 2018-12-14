%�}12.9
%
clear all; close all;

%�p���g���͈̔͂��w��
w = logspace(-3, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-3}����10^{3}��1000�_)

%�}12.9�̃v���b�g
%G_3(s)�̕��q�E���ꑽ������^����
num3 = [ 0 1 ]; %G_3(s)�̕��q������
den3 = [ 0.1 1 ]; %G_3(s)�̕��ꑽ����

%�`�B�֐��\����^����
sys3 = tf( num3, den3 ); %�`�B�֐��\��  

[ gain3 phase3 w3 ] = bode( sys3, w ); %�Q�C���ƈʑ����ʂɋ��߂�
gain3 = gain3(:); % �Q�C���̔z���1�����x�N�g���ɕϊ�
gain3dB = 20*log10(gain3); %�Q�C�����f�V�x���l�ɕϊ�

semilogx(w3, gain3dB); %�Бΐ��O���t�ŃQ�C�����}���v���b�g
xlim([10^(-3),10^3]) %�����i�p���g���j�͈̔͂̎w��
ylim([-40 40]) %�c���͈̔͂̎w��
grid; %�r����\��
xlabel('Frequency (rad/s)'); %�����̃��x���\��
ylabel('Gain (dB)'); %�c���̃��x���\��