syms a b c
%Representa las matrices utilizadas para el almacenamiento de los datos de 
%los angulos
%M es la matriz de orientaci鏮 de cada junta
%Q es la matriz de cuaterniones
%P
%Y
%R 
theta1=[];                                                                  %聲gulo Tronco
theta2=[];                                                                  %聲gulo Cuello
theta3=[];                                                                  %聲gulo Codo Izquierdo
theta4=[];                                                                  %聲gulo Codo Derecho
theta5=[];                                                                  %聲gulo Mu鎑ca Izquierda
theta6=[];                                                                  %聲gulo Mu鎑ca Derecha
theta7=[];                                                                  %聲gulo Brazo Izquierdo
theta8=[];                                                                  %聲gulo Brazo Derecho
theta9=[];                                                                  %聲gulo Pierna Izquierda
theta10=[];                                                                 %聲gulo Pierna Derecha
theta11=[];                                                                 %聲gulo Brazo Derecho
theta12=[];                                                                 %聲gulo Brazo Izquierdo
theta_1=[];                                                                 %Inclinaci鏮 lateral Tronco
theta_2=[];                                                                 %Inclinaci鏮 lateral Cuello
theta_22=[];                                                                %Inclinaci鏮 lateral Cuello
s=size(M);
%Q=zeros((s(1)*4)/3,25);        %Si se tiene la matriz, comentar esta l璯ea
for i = 1:1:(s(1)/3)
%C嫮culo de 嫕gulos para m彋odo REBA
%Puntos de Orientacion
     p1(i,:)=[M(i*3-2,1) M(i*3-1,1) M(i*3,1)];                                            %punto 1  
     p2(i,:)=[M(i*3-2,2) M(i*3-1,2) M(i*3,2)];                                            %punto 2
     p3(i,:)=[M(i*3-2,3) M(i*3-1,3) M(i*3,3)];                                            %punto 3
     p4(i,:)=[M(i*3-2,4) M(i*3-1,4) M(i*3,4)];                                            %punto 4
     p5(i,:)=[M(i*3-2,5) M(i*3-1,5) M(i*3,5)];                                            %punto 5
     p6(i,:)=[M(i*3-2,6) M(i*3-1,6) M(i*3,6)];                                            %punto 6
     p7(i,:)=[M(i*3-2,7) M(i*3-1,7) M(i*3,7)];                                            %punto 7
     p8(i,:)=[M(i*3-2,8) M(i*3-1,8) M(i*3,8)];                                            %punto 8
     p9(i,:)=[M(i*3-2,9) M(i*3-1,9) M(i*3,9)];                                            %punto 9
     p10(i,:)=[M(i*3-2,10) M(i*3-1,10) M(i*3,10)];                                        %punto 10
     p11(i,:)=[M(i*3-2,11) M(i*3-1,11) M(i*3,11)];                                        %punto 11
     p12(i,:)=[M(i*3-2,12) M(i*3-1,12) M(i*3,12)];                                        %punto 12
     p13(i,:)=[M(i*3-2,13) M(i*3-1,13) M(i*3,13)];                                        %punto 13
     p14(i,:)=[M(i*3-2,14) M(i*3-1,14) M(i*3,14)];                                        %punto 14
     p15(i,:)=[M(i*3-2,15) M(i*3-1,15) M(i*3,15)];                                        %punto 15
     p17(i,:)=[M(i*3-2,17) M(i*3-1,17) M(i*3,17)];                                        %punto 17
     p18(i,:)=[M(i*3-2,18) M(i*3-1,18) M(i*3,18)];                                        %punto 18
     p19(i,:)=[M(i*3-2,19) M(i*3-1,19) M(i*3,19)];                                        %punto 19
     p21(i,:)=[M(i*3-2,21) M(i*3-1,21) M(i*3,21)];                                        %punto 21
%Puntos de Cuaternarios
     q1(i,:)=[Q(i*4-3,1) Q(i*4-2,1) Q(i*4-1,1) Q(i*4,1)];                                 %punto 1  
     q2(i,:)=[Q(i*4-3,2) Q(i*4-2,2) Q(i*4-1,2) Q(i*4,2)];                                 %punto 2
     q3(i,:)=[Q(i*4-3,3) Q(i*4-2,3) Q(i*4-1,3) Q(i*4,3)];                                 %punto 3
     q4(i,:)=[Q(i*4-3,4) Q(i*4-2,4) Q(i*4-1,4) Q(i*4,4)];                                 %punto 4
     q5(i,:)=[Q(i*4-3,5) Q(i*4-2,5) Q(i*4-1,5) Q(i*4,5)];                                 %punto 5
     q6(i,:)=[Q(i*4-3,6) Q(i*4-2,6) Q(i*4-1,6) Q(i*4,6)];                                 %punto 6
     q7(i,:)=[Q(i*4-3,7) Q(i*4-2,7) Q(i*4-1,7) Q(i*4,7)];                                 %punto 7
     q8(i,:)=[Q(i*4-3,8) Q(i*4-2,8) Q(i*4-1,8) Q(i*4,8)];                                 %punto 8
     q9(i,:)=[Q(i*4-3,9) Q(i*4-2,9) Q(i*4-1,9) Q(i*4,9)];                                 %punto 9
     q10(i,:)=[Q(i*4-3,10) Q(i*4-2,10) Q(i*4-1,10) Q(i*4,10)];                            %punto 10
     q11(i,:)=[Q(i*4-3,11) Q(i*4-2,11) Q(i*4-1,11) Q(i*4,11)];                            %punto 11
     q12(i,:)=[Q(i*4-3,12) Q(i*4-2,12) Q(i*4-1,12) Q(i*4,12)];                            %punto 12
     q13(i,:)=[Q(i*4-3,13) Q(i*4-2,13) Q(i*4-1,13) Q(i*4,13)];                            %punto 13
     q14(i,:)=[Q(i*4-3,14) Q(i*4-2,14) Q(i*4-1,14) Q(i*4,14)];                            %punto 14
     q15(i,:)=[Q(i*4-3,15) Q(i*4-2,15) Q(i*4-1,15) Q(i*4,15)];                            %punto 15
     q17(i,:)=[Q(i*4-3,17) Q(i*4-2,17) Q(i*4-1,17) Q(i*4,17)];                            %punto 17
     q18(i,:)=[Q(i*4-3,18) Q(i*4-2,18) Q(i*4-1,18) Q(i*4,18)];                            %punto 18
     q19(i,:)=[Q(i*4-3,19) Q(i*4-2,19) Q(i*4-1,19) Q(i*4,19)];                            %punto 19
     q21(i,:)=[Q(i*4-3,21) Q(i*4-2,21) Q(i*4-1,21) Q(i*4,21)];                            %punto 21
%聲gulo Tronco
        y=[0 1 0];
        %Vector Espalda media (2) - espalda baja (1)
        v12=p1(i,:)-p2(i,:);                                                              %vector 1-2
        %Vector Espalda (21) - espalda media (2)        
        v212=p21(i,:)-p2(i,:);                                                            %vector 21-2
        %聲gulo del tronco entre v212 - v21
        %theta1(i)=180-rad2deg(acos(dot(v12,v212)/(norm(v12)*norm(v212))));               %嫕gulo tronco
        %Vector Espalda (21) - espalda baja (1)
        v211=p21(i,:)-p1(i,:);                                                            %vector 21-1
        %聲gulo del tronco entre v211 - y
        theta1(i)=rad2deg(acos(dot(y,v211)/(norm(y)*norm(v211))));                        %嫕gulo tronco
%聲gulo Cuello
        %Vector cuello (3) - espalda (21)        
        v213=p21(i,:)-p3(i,:);                                                            %vector 21-3
        %Vector cuello (3) - cabeza (4)        
        v43=p4(i,:)-p3(i,:);                                                              %vector 4-3
        %聲gulo del tronco entre v213 - v43
        theta2(i)=180-rad2deg(acos(dot(v43,v213)/(norm(v43)*norm(v213))));                %嫕gulo cuello        

%聲gulo Codo Izquierdo
        %Vector hombro izquierdo (5) - codo izquierdo (6)        
        v56=p5(i,:)-p6(i,:);                                                              %vector 5-6
        %Vector mu鎑ca izquierda (7) - codo izquierdo (6)        
        v76=p7(i,:)-p6(i,:);                                                              %vector 7-6
        %聲gulo del tronco entre v56 - v76
        theta3(i)=180-rad2deg(acos(dot(v56,v76)/(norm(v56)*norm(v76))));                  %嫕gulo codo izquierdo        
%聲gulo Codo Derecho
        %Vector hombro derecho (9) - codo derecho (10)        
        v910=p9(i,:)-p10(i,:);                                                            %vector 9-10
        %Vector mu鎑ca derecho (11) - codo derecho (10)        
        v1110=p11(i,:)-p10(i,:);                                                          %vector 11-10
        %聲gulo del tronco entre v910 - v1110
        theta4(i)=180-rad2deg(acos(dot(v910,v1110)/(norm(v910)*norm(v1110))));            %嫕gulo codo derecho  
  
%聲gulo Mu鎑ca Izquierda
        %Vector codo izquierdo (6) - Mu鎑ca izquierda (7)       
        v67=-v76;                                                                         %vector 6-7
        %Vector T-Dedo Inicial izquierdo (8) - Mu鎑ca izquierda (7)        
        v87=p8(i,:)-p7(i,:);                                                              %vector 8-7
        %聲gulo del tronco entre v67 - v87
        theta5(i)=180-rad2deg(acos(dot(v67,v87)/(norm(v67)*norm(v87))));                  %嫕gulo mu鎑ca izquierda    
%聲gulo Mu鎑ca derecha
        %Vector codo derecho (10) - Mu鎑ca derecha (11)                                              
        v1011=-v1110;                                                                     %vector 10-11
        %Vector T-Dedo Inicial derecho (12) - Mu鎑ca derecha (11)        
        v1211=p12(i,:)-p11(i,:);                                                          %vector 12-11
        %聲gulo del tronco entre v67 - v87
        theta6(i)=180-rad2deg(acos(dot(v1011,v1211)/(norm(v1011)*norm(v1211))));          %嫕gulo mu鎑ca derecha

%聲gulo Brazo izquierda                                                                   
        %Vector Codo izquierdo (6) - Hombro izquierdo (5)
        v65=-v56;                                                                         %vector 6 - 5
        %聲gulo del tronco entre v221 - v21
        theta7(i)=180-rad2deg(acos(dot(y,v65)/(norm(v65)*norm(y))));                      %嫕gulo brazo izquierdo
%聲gulo Brazo derecho                                                          
        %Vector Codo derecho (10) - Hombro derecho (9)
        v109=-v910;                                                                       %vector 10 - 9
        %聲gulo del tronco entre v221 - v21
        theta8(i)=180-rad2deg(acos(dot(y,v109)/(norm(v109)*norm(y))));                    %嫕gulo brazo derecho
%聲gulo Pierna izquierda
        %Vector Cadera izquierda (13) - rodilla izquierda (14)        
        v1314=p13(i,:)-p14(i,:);                                                          %vector 13-14
        %Vector Tobillo izquierdo (15) - Rodilla izquierda (14)        
        v1514=p15(i,:)-p14(i,:);                                                          %vector 15-14
        %聲gulo del tronco entre v1314 - v1514
        theta9(i)=180-rad2deg(acos(dot(v1314,v1514)/(norm(v1314)*norm(v1514))));          %嫕gulo pierna izquierda
%聲gulo Pierna derecha
        %Vector Cadera derecha (17) - rodilla derecha (18)        
        v1718=p17(i,:)-p18(i,:);                                                          %vector 17-18
        %Vector Tobillo derecho (19) - Rodilla derecha (18)        
        v1918=p19(i,:)-p18(i,:);                                                          %vector 19-18
        %聲gulo del tronco entre v1718 - v1918
        theta10(i)=180-rad2deg(acos(dot(v1718,v1918)/(norm(v1718)*norm(v1918))));         %嫕gulo pierna derecha        
      
%Creaci鏮 de planos Frontal y Sagital
        v15=p5(i,:)-p1(i,:);
        v19=p9(i,:)-p1(i,:);
        normal=cross(v15,v19);
        v211=p21(i,:)-p1(i,:);
        format short
        P1=vpa([a-p1(1) b-p1(2) c-p1(3)
                v15(1) v15(2) v15(3)
                v19(1) v19(2) v19(3)]);
        E1=det(P1);                                                                       %Ecuaci鏮 del plano
        P2=vpa([a-p1(1) b-p1(2) c-p1(3)
                v211(1) v211(2) v211(3)   
                normal(1) normal(2) normal(3)]);
        E2=det(P2);                                                                       %Ecuaci鏮 del plano
        D_E2=subs(E2,{a, b, c},{0, 0, 0});
        A_E2=subs(E2-D_E2,{a, b, c},{1, 0, 0});
        B_E2=subs(E2-D_E2,{a, b, c},{0, 1, 0});
        C_E2=subs(E2-D_E2,{a, b, c},{0, 0, 1});        
        norm2=[A_E2 B_E2 C_E2];
        v56_p=cross(norm2,cross(v56,norm2))/(norm(norm2))^2;
        theta11(i)=rad2deg(acos(dot(v56_p,y)/(norm(v56_p)*norm(y))));                      %聲gulo de Brazo derecho
        proy_v56=cross(v211,cross(v56,v211))/(norm(v211)^2);
        proy_y_v56=cross(normal,cross(proy_v56,normal))/(norm(normal))^2;       
        v910_p=cross(norm2,cross(v910,norm2))/(norm(norm2))^2;
        theta12(i)=rad2deg(acos(dot(v910_p,y)/(norm(v910_p)*norm(y))));                    %聲gulo de Brazo izquierdo          

%Correcciones Grupo A     
        %Inclinaci鏮 lateral de tronco
        v59=p5(i,:)-p9(i,:);
        v1317=p13(i,:)-p17(i,:);
        theta_1(i)=rad2deg(acos(dot(v59,v1317)/(norm(v59)*norm(v1317))));                  %聲gulo de inclinaci鏮 lateral del tronco
   
        %Inclinaci鏮 lateral del cuello
        v521=p5(i,:)-p21(i,:);
        v321=-v213;
        theta_2(i)=rad2deg(acos(dot(v521,v321)/(norm(v521)*norm(v321))));                 %聲gulo de inclinaci鏮 lateral cuello
        v921=p9(i,:)-p21(i,:);
        theta_22(i)=rad2deg(acos(dot(v921,v321)/(norm(v921)*norm(v321))));                %聲gulo de inclinaci鏮 lateral cuello      
end
d = linspace(0,100,(s(1)/3));

% figure
% subplot(2,5,1); plot(d,theta1,d,20+d-d,'g',d,60+d-d,'y')
% title('Tronco')
% axis([0 100 0 80])
% subplot(2,5,2); plot(d,theta2,d,20+d-d,'g')
% title('Cuello')
% axis([0 100 0 30])
% subplot(2,5,3); plot(d,theta9,d,30+d-d,'g',d,60+d-d,'y')
% title('Pierna Izquierda')
% axis([0 100 0 80])
% subplot(2,5,4); plot(d,theta10,d,30+d-d,'g',d,60+d-d,'y')
% title('Pierna Derecha')
% axis([0 100 0 80])
% subplot(2,5,5); plot(d,theta7,d,theta11,d,20+d-d,'g',d,45+d-d,'y',d,90+d-d,'m')
% title('Brazo Izquierdo')
% axis([0 100 0 180])
% subplot(2,5,6); plot(d,theta8,d,theta12,d,20+d-d,'g',d,45+d-d,'y',d,90+d-d,'m')
% title('Brazo Derecho')
% axis([0 100 0 180])
% subplot(2,5,7); plot(d,theta3,d,60+d-d,'g',d,100+d-d,'y')
% title('Codo Izquierdo')
% axis([0 100 0 180])
% subplot(2,5,8); plot(d,theta4,d,60+d-d,'g',d,100+d-d,'y')
% title('Codo Derecho')
% axis([0 100 0 180])
% subplot(2,5,9); plot(d,theta5,d,15+d-d,'g')
% title('Mu鎑ca Izquierda')
% axis([0 100 0 90])
% subplot(2,5,10); plot(d,theta6,d,15+d-d,'g')
% title('Mu鎑ca Derecha')
% axis([0 100 0 90])

%Generaci鏮 de 嫕gulos de rotaci鏮 de Euler a partir de cuaternarios [yaw, pitch, roll] = quat2angle(q11);
[r1_1,r1_2,r1_3] = quat2angle(q1);
[r2_1,r2_2,r2_3] = quat2angle(q2);
[r3_1,r3_2,r3_3] = quat2angle(q3);
[r4_1,r4_2,r4_3] = quat2angle(q4);
[r5_1,r5_2,r5_3] = quat2angle(q5);
[r6_1,r6_2,r6_3] = quat2angle(q6);
[r7_1,r7_2,r7_3] = quat2angle(q7);
[r8_1,r8_2,r8_3] = quat2angle(q8);
[r9_1,r9_2,r9_3] = quat2angle(q9);
[r10_1,r10_2,r10_3] = quat2angle(q10);
[r11_1,r11_2,r11_3] = quat2angle(q11);
[r12_1,r12_2,r12_3] = quat2angle(q12);
[r13_1,r13_2,r13_3] = quat2angle(q13);
[r14_1,r14_2,r14_3] = quat2angle(q14);
[r15_1,r15_2,r15_3] = quat2angle(q15);
[r17_1,r17_2,r17_3] = quat2angle(q17);
[r18_1,r18_2,r18_3] = quat2angle(q18);
[r19_1,r19_2,r19_3] = quat2angle(q19);
[r21_1,r21_2,r21_3] = quat2angle(q21);

%Suavizado
%Quaternion
s_theta1=smooth(d,theta1,0.15,'loess');
s_theta2=smooth(d,theta2,0.15,'loess');
s_theta3=smooth(d,theta3,0.15,'loess');
s_theta4=smooth(d,theta4,0.15,'loess');
s_theta5=smooth(d,theta5,0.15,'loess');
s_theta6=smooth(d,theta6,0.15,'loess');
s_theta7=smooth(d,theta7,0.15,'loess');
s_theta8=smooth(d,theta8,0.15,'loess');
s_theta9=smooth(d,theta9,0.15,'loess');
s_theta10=smooth(d,theta10,0.15,'loess');
s_theta11=smooth(d,theta11,0.15,'loess');
s_theta12=smooth(d,theta12,0.15,'loess');

s_P=[];
s_Y=[];
s_R=[];
%Euler
for i = 1:1:25
    s_P(:,i)=smooth(d,P(:,i),0.15,'loess');
    s_Y(:,i)=smooth(d,Y(:,i),0.15,'loess');
    s_R(:,i)=smooth(d,R(:,i),0.15,'loess');
end


figure
subplot(2,5,1); plot(d,s_theta1,d,20+d-d,'g',d,60+d-d,'y')
title('Tronco')
axis([0 100 0 80])
subplot(2,5,2); plot(d,s_theta2,d,20+d-d,'g')
title('Cuello')
axis([0 100 0 30])
subplot(2,5,3); plot(d,s_theta9,d,30+d-d,'g',d,60+d-d,'y')
title('Pierna Izquierda')
axis([0 100 0 80])
subplot(2,5,4); plot(d,s_theta10,d,30+d-d,'g',d,60+d-d,'y')
title('Pierna Derecha')
axis([0 100 0 80])
subplot(2,5,5); plot(d,s_theta7,d,s_theta11,d,20+d-d,'g',d,45+d-d,'y',d,90+d-d,'m')
title('Brazo Izquierdo')
axis([0 100 0 180])
subplot(2,5,6); plot(d,s_theta8,d,s_theta12,d,20+d-d,'g',d,45+d-d,'y',d,90+d-d,'m')
title('Brazo Derecho')
axis([0 100 0 180])
subplot(2,5,7); plot(d,s_theta3,d,60+d-d,'g',d,100+d-d,'y')
title('Codo Izquierdo')
axis([0 100 0 180])
subplot(2,5,8); plot(d,s_theta4,d,60+d-d,'g',d,100+d-d,'y')
title('Codo Derecho')
axis([0 100 0 180])
subplot(2,5,9); plot(d,s_theta5,d,15+d-d,'g')
title('Mu鎑ca Izquierda')
axis([0 100 0 90])
subplot(2,5,10); plot(d,s_theta6,d,15+d-d,'g')
title('Mu鎑ca Derecha')
axis([0 100 0 90])

%嫕gulos de Euler de la mu鎑ca derecha

figure
sr11_1=rad2deg(smooth(d,r11_1,0.15,'loess'));
sr11_2=rad2deg(smooth(d,r11_2,0.15,'loess'));
sr11_3=rad2deg(smooth(d,r11_3,0.15,'loess'));
plot(d,sr11_1,d,sr11_2,d,sr11_3)
legend('Pitch','Yaw','Roll')
title('聲gulos de la Mu鎑ca derecha')

figure
plot(d,sr11_1,d,P(:,11),d,Y(:,11),d,R(:,11))
legend('Pitch Q','Pitch E1','Pitch E3','Pitch E3')
title('聲gulos de la Mu鎑ca derecha')

figure
plot(d,sr11_1,d,s_P(:,11))
legend('Pitch Q','Pitch E')
figure
plot(d,sr11_2,d,s_Y(:,11))
legend('Yaw Q','Yaw E')
figure
plot(d,sr11_3,d,s_R(:,11))
legend('Roll Q','Roll E')
%    Centro                Izquierda                     Derecha

% 21 Espalda            5  Hombro izquierdo           9  Hombro derecho
% 3  Cuello             6  Codo izquierdo             10 Codo derecho
% 4  Cabeza             7  Mu鎑ca izquierda           11 Mu鎑ca derecha
% 2  Espalda media      8  T-Dedo Inicial izquierdo   12 T-Dedo Inicial derecho
% 1  Espalda baja       22 T-Dedo Final izquierdo     24 T-Dedo Final derecho
%                       23 T-Pulgar izquierdo         25 T-Pulgar derecho
%                       13 Cadera izquierda           17 Cadera derecha
%                       14 Rodilla izquierda          18 Rodilla derecha
%                       15 Tobillo izquierdo          19 Tobillo derecho
%                       16 Pie izqueirdo              20 Pie derecho