%図9.11%clear all; close all;%伝達関数の分子・分母多項式を与えるnum = [ 0 1 ]; %分子多項式den = [ 1 1 ]; %分母多項式%比例ゲインと積分ゲインのパラメータを与えるKp = 1.0; %K_p=1の場合のゲインKi1 = 0.5; %K_i=0.5の場合のゲインKi2 = 0.75; %K_i=0.75の場合のゲインKi3 = 5.0; %K_i=5の場合のゲイン%PIコントローラの分子・分母多項式を与えるnumc1 = [ Kp, Ki1 ]; %K_p=1, K_i=0.5の場合の分子多項式numc2 = [ Kp, Ki2 ]; %K_p=1, K_i=0.75の場合の分子多項式numc3 = [ Kp, Ki3 ]; %K_p=1, K_i=5の場合の分子多項式denc = [ 1, 0 ]; %分母多項式%制御対象とコントローラの伝達関数表現を与えるsys = tf( num, den ); %制御対象の伝達関数表現c1 = tf( numc1, denc ); %K_p=1, K_i=0.5の場合のコントローラc2 = tf( numc2, denc ); %K_p=1, K_i=0.75の場合のコントローラc3 = tf( numc3, denc ); %K_p=1, K_i=5の場合のコントローラ%コントローラと1次遅れ系のフィードバック結合を求めるsysc1 = feedback( c1*sys, 1); %K_p=1, K_i=0.5の場合のフィードバック結合sysc2 = feedback( c2*sys, 1); %K_p=1, K_i=0.75の場合のフィードバック結合sysc3 = feedback( c3*sys, 1); %K_p=1, K_i=5の場合のフィードバック結合%時間変数の定義t = 0:0.01:20; %0から20まで0.01刻み%ステップ応答の計算[ y0, t0 ] = step( sys, t ); %K_p=0, K_i=0の場合のステップ応答[ y1, t1 ] = step( sysc1, t ); %K_p=1, K_i=0.5の場合のステップ応答[ y2, t2 ] = step( sysc2, t ); %K_p=1, K_i=0.75場合のステップ応答[ y3, t3 ] = step( sysc3, t ); %K_p=1, K_i=5の場合のステップ応答%図9.11のプロットplot(t0,y0,'-b',t1,y1,'-g',t2,y2,'-y',t3,y3,'-r'); %ステップ応答をプロットxlim([0,20]) %横軸（時間軸）の範囲の指定ylim([0.0 1.4]) %縦軸の範囲の指定xticks([0 5 10 15 20]) %横軸の目盛りの値の設定yticks([0.0 0.2 0.4 0.6 0.8 1.0 1.2 1.4]) %縦軸の目盛りの値の設定grid; %罫線を表示xlabel('time  t [s]'); %横軸のラベル表示ylabel('y(t)') %縦軸のラベル表示legend('K_p=0,K_i=0','K_p=1,K_i=0.5','K_p=1,K_i=0.75','K_p=1,K_i=5'); %凡例の表示