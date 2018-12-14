%図12.6
%
clear all; close all;

%比例要素Kの分子・分母多項式を与える
numK = [ 10 ]; %比例要素の分子多項式
denK = [ 1 ]; %比例要素の分母多項式

%G_1(s)の分子・分母多項式を与える
num1 = [ 0 1 ]; %G_1(s)の分子多項式
den1 = [ 10 1 ]; %G_2(s)の分母多項式

%G_2(s)の分子・分母多項式を与える
num2 = [ 1 1 ]; %G_2(s)の分子多項式
den2 = [ 0 1 ]; %G_2(s)の分母多項式

%G_3(s)の分子・分母多項式を与える
num3 = [ 0 1 ]; %G_3(s)の分子多項式
den3 = [ 0.1 1 ]; %G_3(s)の分母多項式

%伝達関数表現を与える
sysK = tf( numK, denK ); %Kの伝達関数表現 
sys1 = tf( num1, den1 ); %G_1(s)の伝達関数表現
sys2 = tf( num2, den2 ); %G_2(s)の伝達関数表現
sys3 = tf( num3, den3 ); %G_3(s)の伝達関数表現

%角周波数の範囲を指定
w = logspace(-3, 3, 1000); %対数的に等間隔なベクトルの生成(10^{-3}から10^{3}で1000点)

%比例要素のゲインと位相の計算
[ gainK phaseK wK ] = bode( sysK, w ); %ゲインと位相
gainK = gainK(:); % ゲインの配列を1次元ベクトルに変換
gainKdB = 20*log10(gainK); %ゲインをデシベル値に変換
phaseK = phaseK(:); % 位相の配列を1次元ベクトルに変換

%G_1(s)のゲインと位相の計算
[ gain1 phase1 w1 ] = bode( sys1, w ); %ゲインと位相
gain1 = gain1(:); % ゲインの配列を1次元ベクトルに変換
gain1dB = 20*log10(gain1); %ゲインをデシベル値に変換
phase1 = phase1(:); % 位相の配列を1次元ベクトルに変換

%G_2(s)のゲインと位相の計算
[ gain2 phase2 w2 ] = bode( sys2, w ); %ゲインと位相
gain2 = gain2(:); % ゲインの配列を1次元ベクトルに変換
gain2dB = 20*log10(gain2); %ゲインをデシベル値に変換
phase2 = phase2(:); % 位相の配列を1次元ベクトルに変換

%G_3(s)のゲインと位相の計算
[ gain3 phase3 w3 ] = bode( sys3, w ); %ゲインと位相
gain3 = gain3(:); % ゲインの配列を1次元ベクトルに変換
gain3dB = 20*log10(gain3); %ゲインをデシベル値に変換
phase3 = phase3(:); % 位相の配列を1次元ベクトルに変換

%図12.6のプロット
figure(1) %図のウィンドウを開く
subplot(2,1,1) %複数の図を並べるためのコマンド．2行1列の1行目という意味
semilogx(wK, gainKdB); %ゲイン線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-40 40]) %縦軸の範囲の指定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain (dB)'); %縦軸のラベル表示
title('Bode diagram of K')

subplot(2,1,2) %複数の図を並べるためのコマンド．2行1列の2行目という意味
semilogx(wK, phaseK); %位相線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-90 0]) %縦軸の範囲の指定
yticks([-90 -45 0]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency [rad/s]'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示

%図12.7のプロット
figure(2) %図のウィンドウを開く
subplot(2,1,1) %複数の図を並べるためのコマンド．2行1列の1行目という意味
semilogx(w1, gain1dB); %ゲイン線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-40 40]) %縦軸の範囲の指定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain (dB)'); %縦軸のラベル表示
title('Bode diagram of G_1(s)')

subplot(2,1,2) %複数の図を並べるためのコマンド．2行1列の2行目という意味
semilogx(w1, phase1); %位相線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-90 0]) %縦軸の範囲の指定
yticks([-90 -45 0]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency [rad/s]'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示

%図12.8のプロット
figure(3) %図のウィンドウを開く
subplot(2,1,1) %複数の図を並べるためのコマンド．2行1列の1行目という意味
semilogx(w2, gain2dB); %片対数グラフでゲイン線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-40 40]) %縦軸の範囲の指定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain (dB)'); %縦軸のラベル表示
title('Bode diagram of G_2(s)')

subplot(2,1,2) %複数の図を並べるためのコマンド．2行1列の2行目という意味
semilogx(w2, phase2); %位相線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-90 0]) %縦軸の範囲の指定
yticks([-90 -45 0]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency [rad/s]'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示

%図12.9のプロット
figure(4) %図のウィンドウを開く
subplot(2,1,1) %複数の図を並べるためのコマンド．2行1列の1行目という意味
semilogx(w3, gain3dB); %ゲイン線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-40 40]) %縦軸の範囲の指定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain (dB)'); %縦軸のラベル表示
title('Bode diagram of G_3(s)')

subplot(2,1,2) %複数の図を並べるためのコマンド．2行1列の2行目という意味
semilogx(w3, phase3); %位相線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-90 0]) %縦軸の範囲の指定
yticks([-90 -45 0]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency [rad/s]'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示

%図12.10のプロット
figure(5) %図のウィンドウを開く
subplot(2,1,1) %複数の図を並べるためのコマンド．2行1列の1行目という意味
semilogx(w3, gainKdB + gain1dB + gain2dB + gain3dB); %ゲイン線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-40 40]) %縦軸の範囲の指定
grid; %罫線を表示
xlabel('Frequency (rad/s)'); %横軸のラベル表示
ylabel('Gain (dB)'); %縦軸のラベル表示
title('Bode diagram of G(s)')

subplot(2,1,2) %複数の図を並べるためのコマンド．2行1列の2行目という意味
semilogx(w3, phaseK + phase1 + phase2 + phase3); %位相線図をプロット
xlim([10^(-3),10^3]) %横軸（角周波数）の範囲の指定
ylim([-90 0]) %縦軸の範囲の指定
yticks([-90 -45 0]) %縦軸の目盛りの値の設定
grid; %罫線を表示
xlabel('Frequency [rad/s]'); %横軸のラベル表示
ylabel('Phase [deg]'); %縦軸のラベル表示
