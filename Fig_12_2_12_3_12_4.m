%図12.2, 12.3, 12.4
%
clear all; close all;

%1次遅れ系のパラメータを与える
K = 1; %K=1
T1 = 10; %G_1(s)の時定数の値
T2 = 0.2; %G_2(s)の時定数の値

%伝達関数の分子・分母多項式を与える
num = [ 0 K ]; %分子多項式
den1 = [ T1 1 ]; %G_1(s)の分母多項式
den2 = [ T2 1 ]; %G_2(s)の分母多項式
den3 = [ T1*T2 T1+T2 1 ]; %G(s)の分母多項式

%伝達関数表現を与える
sys1 = tf( num, den1 ); %G_1(s)の伝達関数表現
sys2 = tf( num, den2 ); %G_2(s)の伝達関数表現
sys3 = tf( num, den3 ); %G(s)のの伝達関数表現

%角周波数の範囲を指定
w = logspace(-2, 2, 1000); %対数的に等間隔なベクトルの生成(10^{-2}から10^{2}で1000点)

%図12.2のプロット

figure(1) %図のウィンドウを開く

bode(sys1,w); %G_1(s)のボード線図をプロット
grid; %罫線を表示
title('Bode diagram of G_1(s)')
h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）

%図12.3のプロット

figure(2) %図のウィンドウを開く

bode(sys2,w); %G_2(s)のボード線図をプロット
grid; %罫線を表示
title('Bode diagram of G_2(s)')
h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）

%図12.4のプロット

figure(3) %図のウィンドウを開く

bode(sys3,w); %G(s)のボード線図をプロット
grid; %罫線を表示
title('Bode diagram of G(s)')
h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）

%G_1(s), G_2(s), G(s)を同一グラフ上にプロット

figure(4) %図のウィンドウを開く

bode(sys1,sys2,sys3,w); %ボード線図をプロット
grid; %罫線を表示
h = findobj(gcf,'type','line'); %プロットの線を太くする
set(h,'linewidth',2); %プロットの線を太くする（サイズは2）
legend('G_1(s)', 'G_2(s)', 'G(s)')