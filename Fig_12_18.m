%�}12.18
%
clear all; close all;

%�`�B�֐��̕��q�E���ꑽ������^����
num = [ 0 1 ]; %���q������
den = [ 1 1 ]; %T=1�̏ꍇ�̕��ꑽ����

%�`�B�֐��\����^����
sys = tf( num, den ); %T=1�̏ꍇ�̓`�B�֐��\�� 

nyquist( sys ) %�x�N�g���O�Ղ̃v���b�g�i�i�C�L�X�g���}�j
xlim([-0.2,1.2]) %�����i�����j�͈̔͂̎w��
ylim([-0.6 0]) %�c���i�����j�͈̔͂̎w��