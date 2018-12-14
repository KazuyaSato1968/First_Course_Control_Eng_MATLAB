%図14.4
%
clear all; close all;

%位相遅れコントローラのパラメータを与える
omega1 = 1; %ω_1=1
omega2 = 0.1; %ω_2=0.1
omega20 = 0; %ω_2=0の場合

%位相遅れコントローラの伝達関数の分子・分母多項式を与える
numc = [ 1 omega1 ]; %分子多項式
den1 = [ 1 omega2 ]; %omega_2=0.1の場合の分母多項式
den2 = [ 1 omega20 ]; %omega_2=0の場合の分母多項式

%位相遅れコントローラの伝達関数表現を与える
sys1 = tf( numc, den1 ); %omega_2=0.1の場合の伝達関数
sys2 = tf( numc, den2 ); %omega_2=0の場合の伝達関数

%角周波数の範囲を指定
w = logspace(-3, 3, 1000); %対数的に等間隔なベクトルの生成(10^{-3}から10^{3}で1000点)

%図11.4のプロット
bode( sys1,sys2,w ) %ボード線図を表示
grid; %罫線を表示
legend('omega2 = 1', 'omega2 = 0') %凡例の表示
h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）