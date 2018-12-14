%�}12.2, 12.3, 12.4
%
clear all; close all;

%1���x��n�̃p�����[�^��^����
K = 1; %K=1
T1 = 10; %G_1(s)�̎��萔�̒l
T2 = 0.2; %G_2(s)�̎��萔�̒l

%�`�B�֐��̕��q�E���ꑽ������^����
num = [ 0 K ]; %���q������
den1 = [ T1 1 ]; %G_1(s)�̕��ꑽ����
den2 = [ T2 1 ]; %G_2(s)�̕��ꑽ����
den3 = [ T1*T2 T1+T2 1 ]; %G(s)�̕��ꑽ����

%�`�B�֐��\����^����
sys1 = tf( num, den1 ); %G_1(s)�̓`�B�֐��\��
sys2 = tf( num, den2 ); %G_2(s)�̓`�B�֐��\��
sys3 = tf( num, den3 ); %G(s)�̂̓`�B�֐��\��

%�p���g���͈̔͂��w��
w = logspace(-2, 2, 1000); %�ΐ��I�ɓ��Ԋu�ȃx�N�g���̐���(10^{-2}����10^{2}��1000�_)

%�}12.2�̃v���b�g

figure(1) %�}�̃E�B���h�E���J��

bode(sys1,w); %G_1(s)�̃{�[�h���}���v���b�g
grid; %�r����\��
title('Bode diagram of G_1(s)')
h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j

%�}12.3�̃v���b�g

figure(2) %�}�̃E�B���h�E���J��

bode(sys2,w); %G_2(s)�̃{�[�h���}���v���b�g
grid; %�r����\��
title('Bode diagram of G_2(s)')
h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j

%�}12.4�̃v���b�g

figure(3) %�}�̃E�B���h�E���J��

bode(sys3,w); %G(s)�̃{�[�h���}���v���b�g
grid; %�r����\��
title('Bode diagram of G(s)')
h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j

%G_1(s), G_2(s), G(s)�𓯈�O���t��Ƀv���b�g

figure(4) %�}�̃E�B���h�E���J��

bode(sys1,sys2,sys3,w); %�{�[�h���}���v���b�g
grid; %�r����\��
h = findobj(gcf,'type','line'); %�v���b�g�̐��𑾂�����
set(h,'linewidth',2); %�v���b�g�̐��𑾂�����i�T�C�Y��2�j
legend('G_1(s)', 'G_2(s)', 'G(s)')