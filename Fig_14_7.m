%�}14.7
%
clear all; close all;

%�ʑ��i�݃R���g���[���̃p�����[�^��^����
omega3 = 10; %��_3=10
omega4 = 1; %��_4=1

%�ʑ��i�݃R���g���[���̓`�B�֐��̕��q�E���ꑽ������^����
num = [ omega3 omega3 * omega4 ]; %���q������
den = [ omega4 omega4 * omega3 ]; %���ꑽ����

%�ʑ��i�݃R���g���[���̓`�B�֐��\����^����
sys = tf( num, den ); %�`�B�֐��\��

%�p���g���͈̔͂��w��
w = logspace(-2, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-2}����10^{3}��1000�_)

%�}11.7�̃v���b�g
bode( sys,w ) %�{�[�h���}��\��
grid; %�r����\��

h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j