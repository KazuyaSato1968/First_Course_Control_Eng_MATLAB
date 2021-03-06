%図11.5
%
clear all; close all;

%積分要素，微分要素のパラメータを与える．
K = 1; %K=1
T = 1; %T=1

%伝達関数の分子・分母多項式を与える
num1 = [ 0 K ]; %積分要素の分子多項式
den1 = [ 1 0 ]; %積分要素の分母多項式
num2 = [ K 0 ]; %微分要素の分子多項式
den2 = [ 0 1 ]; %微分要素の分母多項式

%伝達関数表現を与える
sys1 = tf( num1,den1 ); %積分要素の伝達関数表現
sys2 = tf( num2,den2 ); %微分要素の伝達関数表現

%角周波数の範囲を指定
w = logspace(-2, 2, 1000); %対数的に等間隔なベクトルの生成(10^{-2}から10^{2}で1000点)

%図11.5のプロット
bode(sys1,sys2,w) %ボード線図をプロット
grid; %罫線を表示
h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）