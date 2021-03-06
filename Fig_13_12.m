%図13.12
%
clear all; close all;

%伝達関数の分子・分母多項式を与える
num = [1]; %分子多項式
den = [1 2 1]; %分母多項式

%コントローラのパラメータを与える
K1 = 1.0; %K=1
K2 = 2.4; %K=2.4
K3 = 3.0; %K=3

%コントローラの分子・分母多項式を与える．
numc1 = [ K1 ]; %K=1の場合の分子多項式
numc2 = [ K2 ]; %K=2.4の場合の分子多項式
numc3 = [ K3 ]; %K=3の場合の分子多項式
denc = [ 1 0.1 ]; %分母多項式

%制御対象とコントローラの伝達関数表現を与える
sys = tf( num, den ); %制御対象の伝達関数表現
c1 = tf( numc1, denc ); %K=1の場合のコントローラの伝達関数表現
c2 = tf( numc2, denc ); %K=2.4の場合のコントローラの伝達関数表現
c3 = tf( numc3, denc ); %K=3の場合のコントローラの伝達関数表現

%開ループ伝達関数を求める
sysL1 = c1*sys; %K=1の場合の開ループ伝達関数
sysL2 = c2*sys; %K=2.4の場合の開ループ伝達関数
sysL3 = c3*sys; %K=3の場合の開ループ伝達関数

%角周波数の範囲を指定
w = logspace(-1, 1, 1000); %対数的に等間隔なベクトルの生成(10^{-1}から10^{1}で1000点)

%図13.12のプロット
%図13.12(a)のプロット
[gainL1 phaseL1 wL1] = bode(sysL1, w); %ゲインと位相
gainL1 = gainL1(:); %K=1の場合のゲインの配列を1次元ベクトルに変換
gain1dB = 20*log10(gainL1); %K=1の場合のゲインをデシベル値に変換
phaseL1 = phaseL1(:); %K_{p}=1の場合の位相の配列を1次元ベクトルに変換

subplot(2,3,1) %複数の図を並べるためのコマンド．2行3列の1行1列目という意味
semilogx(wL1, gain1dB); %ゲイン線図をプロット
xlim([10^(-1),10^1]) %横軸（角周波数）の範囲の指定
ylim([-40 25]) %縦軸の範囲の指定
xticks([10^(-1) 10^(0) 10^(1)]) %横軸の目盛りの値の設定
yticks([-40 -20 0 20]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain [dB]'); %縦軸のラベル表示
title('K=1') %タイトルの表示

subplot(2,3,4) %複数の図を並べるためのコマンド．2行3列の2行1列目という意味
semilogx(wL1, phaseL1); %位相線図をプロット
xlim([10^(-1),10^1]) %横軸（角周波数）の範囲の指定
ylim([-200 -90]) %縦軸の範囲の指定
xticks([10^(-1) 10^(0) 10^(1)]) %横軸の目盛りの値の設定
yticks([-180 -135 -90]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示

%図13.12(b)のプロット
[gainL2 phaseL2 wL2] = bode(sysL2, w); %ゲインと位相
gainL2 = gainL2(:); %K=2.4の場合のゲインの配列を1次元ベクトルに変換
gainL2dB = 20*log10(gainL2); %K=2.4の場合のゲインをデシベル値に変換
phaseL2 = phaseL2(:); %K=2.4の場合の位相の配列を1次元ベクトルに変換

subplot(2,3,2) %複数の図を並べるためのコマンド．2行3列の1行2列目という意味
semilogx(wL2, gainL2dB); %ゲイン線図をプロット
xlim([10^(-1),10^1]) %横軸（角周波数）の範囲の指定
ylim([-40 25]) %縦軸の範囲の指定
xticks([10^(-1) 10^(0) 10^(1)]) %横軸の目盛りの値の設定
yticks([-40 -20 0 20]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain [dB]'); %縦軸のラベル表示
title('K=2.4') %タイトルの表示

subplot(2,3,5) %複数の図を並べるためのコマンド．2行3列の2行2列目という意味
semilogx(wL2, phaseL2); %位相線図をプロット
xlim([10^(-1),10^1]) %横軸（角周波数）の範囲の指定
ylim([-200 -90]) %縦軸の範囲の指定
xticks([10^(-1) 10^(0) 10^(1)]) %横軸の目盛りの値の設定
yticks([-180 -135 -90]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示

%図13.12(c)のプロット
[gainL3 phaseL3 wL3] = bode(sysL3, w); %ゲインと位相
gainL3 = gainL3(:); %K=3の場合のゲインの配列を1次元ベクトルに変換
gain3dB = 20*log10(gainL3); %K=3の場合のゲインをデシベル値に変換
phaseL3 = phaseL3(:); %K=3の場合の位相の配列を1次元ベクトルに変換

subplot(2,3,3) %複数の図を並べるためのコマンド．2行3列の1行3列目という意味
semilogx(wL3, gain3dB); %ゲイン線図をプロット
xlim([10^(-1),10^1]) %横軸（角周波数）の範囲の指定
ylim([-40 25]) %縦軸の範囲の指定
xticks([10^(-1) 10^(0) 10^(1)]) %横軸の目盛りの値の設定
yticks([-40 -20 0 20]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain [dB]'); %縦軸のラベル表示
title('K=3') %タイトルの表示

subplot(2,3,6) %複数の図を並べるためのコマンド．2行3列の2行3列目という意味
semilogx(wL3, phaseL3); %位相線図をプロット
xlim([10^(-1),10^1]) %横軸（角周波数）の範囲の指定
ylim([-200 -90]) %縦軸の範囲の指定
xticks([10^(-1) 10^(0) 10^(1)]) %横軸の目盛りの値の設定
yticks([-180 -135 -90]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示