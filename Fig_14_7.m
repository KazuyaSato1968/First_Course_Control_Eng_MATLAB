%図14.7
%
clear all; close all;

%位相進みコントローラのパラメータを与える
omega3 = 10; %ω_3=10
omega4 = 1; %ω_4=1

%位相進みコントローラの伝達関数の分子・分母多項式を与える
num = [ omega3 omega3 * omega4 ]; %分子多項式
den = [ omega4 omega4 * omega3 ]; %分母多項式

%位相進みコントローラの伝達関数表現を与える
sys = tf( num, den ); %伝達関数表現

%角周波数の範囲を指定
w = logspace(-2, 3, 1000); %対数的に等間隔なベクトルの生成(10^{-2}から10^{3}で1000点)

%図11.7のプロット
bode( sys,w ) %ボード線図を表示
grid; %罫線を表示

h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）