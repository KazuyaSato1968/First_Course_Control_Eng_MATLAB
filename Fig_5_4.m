%図5.4
%
clear all; close all; 

%パラメータの値を与える
T1 = 1; %T=1の場合
T2 = 20; %T=20の場合
T3 = 50; %T=50の場合

%伝達関数の分子・分母多項式を与える
num1 = [ 0 1 ]; %T=1の場合の分子多項式
den1 = [ T1 1 ]; %T=1の場合の分母多項式

num2 = [ 0 T2 ]; %T=20の場合の分子多項式
den2 = [ T2 1 ]; %T=20の場合の分母多項式

num3 = [ 0 T3 ]; %T=50の場合の分子多項式 
den3 = [ T3 1 ]; %T=50の場合の分母多項式
%%%%%

%伝達関数表現を与える
sys1 = tf( num1, den1 ); %T=1の場合の伝達関数表現 
sys2 = tf( num2, den2 ); %T=20の場合の伝達関数表現 
sys3 = tf( num3, den3 ); %T=50の場合の伝達関数表現 

%時間変数の定義
t = 0:0.01:50; %0から50まで0.01刻み

%インパルス応答の計算
[ y1, t1 ] = impulse( sys1, t ); %T=1の場合のインパルス応答
[ y2, t2 ] = impulse( sys2, t ); %T=20の場合のインパルス応答
[ y3, t3 ] = impulse( sys3, t ); %T=50の場合のインパルス応答

%図5.4のプロット
plot( t1,y1,'-b', t2,y2,'-g', t3,y3,'-r'); %インパルス応答をプロット
yticks([0 0.2 0.4 0.6 0.8 1]); %横軸の目盛りの値の設定
grid; %罫線を表示
xlabel('time  t [s]'); %横軸のラベル表示
ylabel('y(t) = K/T e^{-t/T}'); %縦軸のラベル表示
legend('T = 1','T = 20','T = 50'); %凡例の表示