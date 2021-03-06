%図13.4
%
clear all; close all;

%制御対象のパラメータを与える
T = 1.0; %T=1

%伝達関数の分子・分母多項式を与える
num = [ 0 1 ]; %分子多項式
den = [ T 1 ]; %T=1の場合の分母多項式

%比例ゲインのパラメータを与える
Kp = 1.0; %K_p=1

%コントローラの分子・分母多項式を与える．
numc = [ Kp ]; %K_p=1の場合の分子多項式
denc = [ 1 ]; %分母多項式

%制御対象とコントローラの伝達関数表現を与える
sys = tf( num, den ); %制御対象の伝達関数表現
c = tf( numc, denc ); %K_p=1.0の場合のコントローラの伝達関数表現

%開ループ伝達関数を求める
sysL1 = c*sys; %開ループ伝達関数

nyquist(sysL1) %ベクトル軌跡のプロット（ナイキスト線図）
xlim([-0.2,1.2]) %横軸（実軸）の範囲の指定
ylim([-0.6 0]) %縦軸（虚軸）の範囲の指定