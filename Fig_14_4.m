%�}14.4
%
clear all; close all;

%�ʑ��x��R���g���[���̃p�����[�^��^����
omega1 = 1; %��_1=1
omega2 = 0.1; %��_2=0.1
omega20 = 0; %��_2=0�̏ꍇ

%�ʑ��x��R���g���[���̓`�B�֐��̕��q�E���ꑽ������^����
numc = [ 1 omega1 ]; %���q������
den1 = [ 1 omega2 ]; %omega_2=0.1�̏ꍇ�̕��ꑽ����
den2 = [ 1 omega20 ]; %omega_2=0�̏ꍇ�̕��ꑽ����

%�ʑ��x��R���g���[���̓`�B�֐��\����^����
sys1 = tf( numc, den1 ); %omega_2=0.1�̏ꍇ�̓`�B�֐�
sys2 = tf( numc, den2 ); %omega_2=0�̏ꍇ�̓`�B�֐�

%�p���g���͈̔͂��w��
w = logspace(-3, 3, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-3}����10^{3}��1000�_)

%�}11.4�̃v���b�g
bode( sys1,sys2,w ) %�{�[�h���}��\��
grid; %�r����\��
legend('omega2 = 1', 'omega2 = 0') %�}��̕\��
h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j