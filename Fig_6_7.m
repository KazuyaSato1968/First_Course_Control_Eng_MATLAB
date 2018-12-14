%図6.7%clear all; close all;%パラメータの値を与えるK = 1; %K=1zeta = 0.5; %ζ=0.5omegan1 = 1.0; %ω_n=1omegan2 = 5.0; %ω_n=5omegan3 = 10.0; %ω_n=10%伝達関数の分子・分母多項式を与えるnum1 = [ 0 0 K*omegan1^2 ]; %ωn=1.0の場合の分子多項式den1 = [ 1 2*zeta*omegan1 omegan1^2 ]; %ωn=1.0の場合の分母多項式num2 = [ 0 0 K*omegan2^2 ]; %ωn=5.0の場合の分子多項式den2 = [ 1 2*zeta*omegan2 omegan2^2 ]; %ωn=5.0の場合の分母多項式num3 = [ 0 0 K*omegan3^2 ]; %ωn=10.0の場合の分子多項式den3 = [ 1 2*zeta*omegan3 omegan3^2 ]; %ωn=10.0の場合の分母多項式%伝達関数表現を与えるsys1 = tf( num1, den1 ); %ω_n=1.0の場合の伝達関数表現 sys2 = tf( num2, den2 ); %ω_n=5.0の場合の伝達関数表現  sys3 = tf( num3, den3 ); %ω_n=10.0の場合の伝達関数表現  %時間変数の定義t = 0:0.01:10; %0から10まで0.01刻み%ステップ応答の計算[ y1, t1 ] = step( sys1, t ); %ωn=1.0の場合のステップ応答[ y2, t2 ] = step( sys2, t ); %ωn=5.0の場合のステップ応答[ y3, t3 ] = step( sys3, t ); %ωn=10.0の場合のステップ応答%図6.7のプロットplot(t1,y1,'-b',t2,y2,'-g',t3,y3,'-r'); %ステップ応答をプロットxlim([0,10]) %横軸（時間軸）の範囲の指定ylim([0.0,1.2]) %縦軸の範囲の指定xticks([0 2 4 6 8 10]) %横軸の目盛りの値の設定yticks([0.0 0.2 0.4 0.6 0.8 1.0 1.2]) %縦軸の目盛りの値の設定grid; %罫線を表示xlabel('time  t [s]'); %横軸のラベル表示ylabel('y(t)') %縦軸のラベル表示legend('ω_n = 1.0','ω_n = 5.0','ω_n = 10'); %凡例の表示