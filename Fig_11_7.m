%�}11.6
%
clear all; close all;

%1���x��n�̃p�����[�^��^����
K = 1; %K=1
T1 = 0.01; %T=0.01
T2 = 1; %T=1
T3 = 100; %T=100

%�`�B�֐��̕��q�E���ꑽ������^����
num1 = [ 0 K ]; %���q������
den1 = [ T1 1 ]; %T=0.01�̏ꍇ�̕��ꑽ����
den2 = [ T2 1 ]; %T=1�̏ꍇ�̕��ꑽ����
den3 = [ T3 1 ]; %T=100�̏ꍇ�̕��ꑽ����

%�`�B�֐��\����^����
sys1 = tf( num1,den1 ); %T=0.01�̏ꍇ�̓`�B�֐��\��
sys2 = tf( num1,den2 ); %T=1�̏ꍇ�̓`�B�֐��\��
sys3 = tf( num1,den3 ); %T=100�̏ꍇ�̓`�B�֐��\��

%�p���g���͈̔͂��w��
w = logspace(-4, 4, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-4}����10^{4}��1000�_)

%�}11.6�̃v���b�g
bode(sys1,sys2,sys3,w); %�{�[�h���}���v���b�g
grid; %�r����\��
legend('T=0.01', 'T=1', 'T=100') %�}��̕\��
h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j


