syms a b c
%Representa las matrices utilizadas para el almacenamiento de los datos de 
%los angulos
theta1=[];                                                                  %Ángulo Tronco
theta2=[];                                                                  %Ángulo Cuello
theta3=[];                                                                  %Ángulo Codo Izquierdo
theta4=[];                                                                  %Ángulo Codo Derecho
theta5=[];                                                                  %Ángulo Muñeca Izquierda
theta6=[];                                                                  %Ángulo Muñeca Derecha
theta7=[];                                                                  %Ángulo Brazo Izquierdo
theta8=[];                                                                  %Ángulo Brazo Derecho
theta9=[];                                                                  %Ángulo Pierna Izquierda
theta10=[];                                                                 %Ángulo Pierna Derecha
theta11=[];                                                                 %Ángulo Brazo Derecho
theta12=[];                                                                 %Ángulo Brazo Izquierdo
theta_1=[];                                                                 %Inclinación lateral Tronco
theta_2=[];                                                                 %Inclinación lateral Cuello
theta_22=[];                                                                %Inclinación lateral Cuello
%Representa las puntuaciones obtenidas mediante el metodo REBA
pA_T=[];                                                                    %Puntuación Tronco grupo A corr
pA_C=[];                                                                    %Puntuación Cuello grupo A corr
pA_P=[];                                                                    %Puntuación Piernas grupo A corr
pB_B=[];                                                                    %Puntuación Brazos grupo B corr
pB_M=input('Ingresar el valor de corrección para la muñeca (1 o 0):');      %Puntuación Muñeca grupo B corr
pT=[];                                                                      %Puntuación Tronco
pC=[];                                                                      %Puntuación Cuello
pP=[];                                                                      %Puntuación Pierna
pB=[];                                                                      %Puntuación Brazo
pA=[];                                                                      %Puntuación Antebrazo
pM=[];                                                                      %Puntuación Muñeca
P=[];                                                                       %Valor de piernas
T=[];                                                                       %Valor de tronco
C=[];                                                                       %Valor del cuello
R_A=[];                                                                     %Respuesta Valor A
A=[];                                                                       %Valor de antebrazo
M_M=[];                                                                     %Valor de muñeca
B=[];                                                                       %Valor de brazo
R_B=[];                                                                     %Respuesta Valor B
R_F=[];                                                                     %Respuesta Final
nA1=input('Carga/Fuerza - Inferior a 5k (0), 5-10 kg (1), 10 kg (2):');     %Tabla de Carga/Fuerza
nA2=input('Instauración rápida o brusca (0 1):');                           %Tabla de Carga/Fuerza
nB=input('Inserte Agarre: Bueno(0)-Regular(1)-Malo(2)-Inaceptable(3):');    %Tabla de agarre
nC1=input('Existe una o mas partes del cuerpo estáticas +1 min (0-1):');    %Tabla de actividad
nC2=input('Movimientos repetitvos +4 veces/min (0-1):');                    %Tabla de actividad
nC3=input('Cambios posturales importantes o posturas inestables (0-1):');   %Tabla de actividad
s=size(M);
for i = 1:1:(s(1)/3)
%Animación de la Matriz de Movimiento    
plot([M(i*3-2,4) M(i*3-2,3)],[M(i*3-1,4) M(i*3-1,3)],'r',[M(i*3-2,3) M(i*3-2,21)],[M(i*3-1,3) M(i*3-1,21)],'r',...
     [M(i*3-2,21) M(i*3-2,5)],[M(i*3-1,21) M(i*3-1,5)],'r',[M(i*3-2,5) M(i*3-2,6)],[M(i*3-1,5) M(i*3-1,6)],'r',...
     [M(i*3-2,21) M(i*3-2,9)],[M(i*3-1,21) M(i*3-1,9)],'r',[M(i*3-2,9) M(i*3-2,10)],[M(i*3-1,9) M(i*3-1,10)],'r',...
     [M(i*3-2,6) M(i*3-2,7)],[M(i*3-1,6) M(i*3-1,7)],'r',[M(i*3-2,7) M(i*3-2,8)],[M(i*3-1,7) M(i*3-1,8)],'r',...
     [M(i*3-2,8) M(i*3-2,22)],[M(i*3-1,8) M(i*3-1,22)],'r',[M(i*3-2,7) M(i*3-2,23)],[M(i*3-1,7) M(i*3-1,23)],'r',...
     [M(i*3-2,10) M(i*3-2,11)],[M(i*3-1,10) M(i*3-1,11)],'r',[M(i*3-2,11) M(i*3-2,12)],[M(i*3-1,11) M(i*3-1,12)],'r',...
     [M(i*3-2,12) M(i*3-2,24)],[M(i*3-1,12) M(i*3-1,24)],'r',[M(i*3-2,11) M(i*3-2,25)],[M(i*3-1,11) M(i*3-1,25)],'r',...
     [M(i*3-2,21) M(i*3-2,2)],[M(i*3-1,21) M(i*3-1,2)],'r',[M(i*3-2,2) M(i*3-2,1)],[M(i*3-1,2) M(i*3-1,1)],'r',...
     [M(i*3-2,1) M(i*3-2,13)],[M(i*3-1,1) M(i*3-1,13)],'r',[M(i*3-2,13) M(i*3-2,14)],[M(i*3-1,13) M(i*3-1,14)],'r',...
     [M(i*3-2,14) M(i*3-2,15)],[M(i*3-1,14) M(i*3-1,15)],'r',[M(i*3-2,15) M(i*3-2,16)],[M(i*3-1,15) M(i*3-1,16)],'r',...
     [M(i*3-2,1) M(i*3-2,17)],[M(i*3-1,1) M(i*3-1,17)],'r',[M(i*3-2,17) M(i*3-2,18)],[M(i*3-1,17) M(i*3-1,18)],'r',...
     [M(i*3-2,18) M(i*3-2,19)],[M(i*3-1,18) M(i*3-1,19)],'r',[M(i*3-2,19) M(i*3-2,20)],[M(i*3-1,19) M(i*3-1,20)],'r')
axis([-0.6 1.2 -1.2 0.8])       
%Cálculo de ángulos para método REBA
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
%Ángulo Tronco
        y=[0 1 0];
        %Vector Espalda media (2) - espalda baja (1)
        v12=p1(i,:)-p2(i,:);                                                                      %vector 1-2
        %Vector Espalda (21) - espalda media (2)        
        v212=p21(i,:)-p2(i,:);                                                                    %vector 21-2
        %Ángulo del tronco entre v212 - v21
        %theta1(i)=180-rad2deg(acos(dot(v12,v212)/(norm(v12)*norm(v212))));             %ángulo tronco
        %Vector Espalda (21) - espalda baja (1)
        v211=p21(i,:)-p1(i,:);                                                                    %vector 21-1
        %Ángulo del tronco entre v211 - y
        theta1(i)=rad2deg(acos(dot(y,v211)/(norm(y)*norm(v211))));                      %ángulo tronco
        if theta1(i)<5
            pT(i)=1;
        elseif theta1(i)>=5 && theta1(i)<20
            pT(i)=2;
        elseif theta1(i)>=20 && theta1(i)<60
            pT(i)=3;
        else
            pT(i)=4;
        end    
%Ángulo Cuello
        %Vector cuello (3) - espalda (21)        
        v213=p21(i,:)-p3(i,:);                                                                    %vector 21-3
        %Vector cuello (3) - cabeza (4)        
        v43=p4(i,:)-p3(i,:);                                                                      %vector 4-3
        %Ángulo del tronco entre v213 - v43
        theta2(i)=180-rad2deg(acos(dot(v43,v213)/(norm(v43)*norm(v213))));              %ángulo cuello        
        if theta2(i)<20
            pC(i)=1;
        else
            pC(i)=2;            
        end
%Ángulo Codo Izquierdo
        %Vector hombro izquierdo (5) - codo izquierdo (6)        
        v56=p5(i,:)-p6(i,:);                                                                      %vector 5-6
        %Vector muñeca izquierda (7) - codo izquierdo (6)        
        v76=p7(i,:)-p6(i,:);                                                                      %vector 7-6
        %Ángulo del tronco entre v56 - v76
        theta3(i)=180-rad2deg(acos(dot(v56,v76)/(norm(v56)*norm(v76))));                %ángulo codo izquierdo        
%Ángulo Codo Derecho
        %Vector hombro derecho (9) - codo derecho (10)        
        v910=p9(i,:)-p10(i,:);                                                                    %vector 9-10
        %Vector muñeca derecho (11) - codo derecho (10)        
        v1110=p11(i,:)-p10(i,:);                                                                  %vector 11-10
        %Ángulo del tronco entre v910 - v1110
        theta4(i)=180-rad2deg(acos(dot(v910,v1110)/(norm(v910)*norm(v1110))));          %ángulo codo derecho  
        if (60<=theta3(i) && theta3(i)<100) | (60<=theta4(i) && theta4(i)<100)
            pA(i)=1;
        else
            pA(i)=2;
        end        
%Ángulo Muñeca Izquierda
        %Vector codo izquierdo (6) - Muñeca izquierda (7)       
        v67=-v76;                                                                       %vector 6-7
        %Vector T-Dedo Inicial izquierdo (8) - Muñeca izquierda (7)        
        v87=p8(i,:)-p7(i,:);                                                                      %vector 8-7
        %Ángulo del tronco entre v67 - v87
        theta5(i)=180-rad2deg(acos(dot(v67,v87)/(norm(v67)*norm(v87))));                %ángulo muñeca izquierda    
%Ángulo Muñeca derecha
        %Vector codo derecho (10) - Muñeca derecha (11)                                              
        v1011=-v1110;                                                                   %vector 10-11
        %Vector T-Dedo Inicial derecho (12) - Muñeca derecha (11)        
        v1211=p12(i,:)-p11(i,:);                                                                  %vector 12-11
        %Ángulo del tronco entre v67 - v87
        theta6(i)=180-rad2deg(acos(dot(v1011,v1211)/(norm(v1011)*norm(v1211))));        %ángulo muñeca derecha
        if theta5(i)<15 | theta6(i)<15
            pM(i)=1;
        else
            pM(i)=2;
        end
%Ángulo Brazo izquierda                                                                   
        %Vector Codo izquierdo (6) - Hombro izquierdo (5)
        v65=-v56;                                                                       %vector 6 - 5
        %Ángulo del tronco entre v221 - v21
        theta7(i)=180-rad2deg(acos(dot(y,v65)/(norm(v65)*norm(y))));                    %ángulo brazo izquierdo
%Ángulo Brazo derecho                                                          
        %Vector Codo derecho (10) - Hombro derecho (9)
        v109=-v910;                                                                     %vector 10 - 9
        %Ángulo del tronco entre v221 - v21
        theta8(i)=180-rad2deg(acos(dot(y,v109)/(norm(v109)*norm(y))));                  %ángulo brazo derecho
%Ángulo Pierna izquierda
        %Vector Cadera izquierda (13) - rodilla izquierda (14)        
        v1314=p13(i,:)-p14(i,:);                                                                  %vector 13-14
        %Vector Tobillo izquierdo (15) - Rodilla izquierda (14)        
        v1514=p15(i,:)-p14(i,:);                                                                  %vector 15-14
        %Ángulo del tronco entre v1314 - v1514
        theta9(i)=180-rad2deg(acos(dot(v1314,v1514)/(norm(v1314)*norm(v1514))));        %ángulo pierna izquierda
%Ángulo Pierna derecha
        %Vector Cadera derecha (17) - rodilla derecha (18)        
        v1718=p17(i,:)-p18(i,:);                                                                  %vector 17-18
        %Vector Tobillo derecho (19) - Rodilla derecha (18)        
        v1918=p19(i,:)-p18(i,:);                                                                  %vector 19-18
        %Ángulo del tronco entre v1718 - v1918
        theta10(i)=180-rad2deg(acos(dot(v1718,v1918)/(norm(v1718)*norm(v1918))));       %ángulo pierna derecha        
        if (30<theta10(i) && theta10(i)<60) | (30<theta9(i) && theta9(i)<60)
            pP(i)=1;
        elseif theta10(i)>60 | theta9(i)>60
            pP(i)=2;
        else
            pP(i)=0;
        end       
%Creación de planos Frontal y Sagital
        v15=p5(i,:)-p1(i,:);
        v19=p9(i,:)-p1(i,:);
        normal=cross(v15,v19);
        v211=p21(i,:)-p1(i,:);
        format short
        P1=vpa([a-p1(1) b-p1(2) c-p1(3)
                v15(1) v15(2) v15(3)
                v19(1) v19(2) v19(3)]);
        E1=det(P1);                                                                     %Ecuación del plano
        P2=vpa([a-p1(1) b-p1(2) c-p1(3)
                v211(1) v211(2) v211(3)   
                normal(1) normal(2) normal(3)]);
        E2=det(P2);                                                                     %Ecuación del plano
        D_E2=subs(E2,{a, b, c},{0, 0, 0});
        A_E2=subs(E2-D_E2,{a, b, c},{1, 0, 0});
        B_E2=subs(E2-D_E2,{a, b, c},{0, 1, 0});
        C_E2=subs(E2-D_E2,{a, b, c},{0, 0, 1});        
        norm2=[A_E2 B_E2 C_E2];
        v56_p=cross(norm2,cross(v56,norm2))/(norm(norm2))^2;
        theta11(i)=rad2deg(acos(dot(v56_p,y)/(norm(v56_p)*norm(y))));                   %Ángulo de Brazo derecho
        proy_v56=cross(v211,cross(v56,v211))/(norm(v211)^2);
        proy_y_v56=cross(normal,cross(proy_v56,normal))/(norm(normal))^2;       
        v910_p=cross(norm2,cross(v910,norm2))/(norm(norm2))^2;
        theta12(i)=rad2deg(acos(dot(v910_p,y)/(norm(v910_p)*norm(y))));                 %Ángulo de Brazo izquierdo          
       if theta7(i)<20 | theta8(i)<20
           pB(i)=1;
       elseif (20<=theta7(i) && theta7(i)<45) | (20<=theta8(i) && theta8(i)<45)
           pB(i)=2;
       elseif (45<=theta7(i) && theta7(i)<90) | (45<=theta8(i) && theta8(i)<90)
           pB(i)=3;
       else 
           pB(i)=4;
       end
%Correcciones Grupo A     
        %Inclinación lateral de tronco
        v59=p5(i,:)-p9(i,:);
        v1317=p13(i,:)-p17(i,:);
        theta_1(i)=rad2deg(acos(dot(v59,v1317)/(norm(v59)*norm(v1317))));               %Ángulo de inclinación lateral del tronco
  if theta_1(i)>20
        pA_T(i)=1;
  else
        pA_T(i)=0;
  end       
        %Inclinación lateral del cuello
        v521=p5(i,:)-p21(i,:);
        v321=-v213;
        theta_2(i)=rad2deg(acos(dot(v521,v321)/(norm(v521)*norm(v321))));               %Ángulo de inclinación lateral cuello
        v921=p9(i,:)-p21(i,:);
        theta_22(i)=rad2deg(acos(dot(v921,v321)/(norm(v921)*norm(v321))));               %Ángulo de inclinación lateral cuello      
  if theta_2(i)>90|theta_22(i)>90  
        pA_C(i)=1;
  else
        pA_C(i)=0;
  end
        %Corrección Piernas
  if abs(abs(p18(2))-abs(p14(2)))>0.03
     pA_P(i)=2;
  else
     pA_P(i)=1;
  end
        %Correcciones Grupo B
        %Corrección Brazos
  brazo_i=(abs(norm(v109)-norm(v910_p))*100)/norm(v109); 
  brazo_d=(abs(norm(v65)-norm(v56_p))*100)/norm(v65); 
  if brazo_i > 10 | brazo_d > 10
      pB_B(i)=1;
  else
      pB_B(i)=0;
  end
  if p6(2) > p5(2) | p10(2) > p9(2)
      pB_B(i)=pB_B(i)+1;
  else
  end 
  %Evaluación REBA
  %Tabla A 
  A_C_1=[1 2 3 4; 2 3 4 5; 2 4 5 6; 3 5 6 7; 4 6 7 8];
  A_C_2=[1 2 3 4; 3 4 5 6; 4 5 6 7; 5 6 7 8; 6 7 8 9];
  A_C_3=[3 3 5 6; 4 5 6 7; 5 6 7 8; 6 7 8 9; 7 8 9 9];
  P(i)=pP(i)+pA_P(i);
  T(i)=pT(i)+pA_T(i);
  C(i)=pC(i)+pA_C(i);
  if C(i)==1
      R_A(i)=A_C_1(T(i),P(i))+nA1+nA2;
  elseif C(i)==2
      R_A(i)=A_C_2(T(i),P(i))+nA1+nA2;
  else
      R_A(i)=A_C_3(T(i),P(i))+nA1+nA2;
  end
    %Tabla B 
  B_A_1=[1 2 2;1 2 3;3 4 5;4 5 5;6 7 8;7 8 8];
  B_A_2=[1 2 3;2 3 4;4 5 5;5 6 7;7 8 8;8 9 9];
  A(i)=pA(i);
  M_M(i)=pM(i)+pB_M;
  B(i)=pB(i)+pB_B(i);
  if A(i)==1
      R_B(i)=B_A_1(B(i),M_M(i))+nB;
  else
      R_B(i)=B_A_2(B(i),M_M(i))+nB;
  end
  F=[1 1 1 2 3 3 4 5 6 7 7 7
     1 2 2 3 4 4 5 6 6 7 7 7
     2 3 3 3 4 5 6 7 7 8 8 8
     3 4 4 4 5 6 7 8 8 9 9 9
     6 6 6 7 8 8 9 9 10 10 10 10
     7 7 7 8 9 9 9 10 10 11 11 11
     8 8 8 9 10 10 10 10 10 11 11 11
     9 9 9 10 10 10 11 11 11 12 12 12
     10 10 10 11 11 11 11 12 12 12 12 12
     11 11 11 11 12 12 12 12 12 12 12 12 
     12 12 12 12 12 12 12 12 12 12 12 12];
 R_F(i)=F(R_A(i),R_B(i))+nC1+nC2+nC3;
 dis(i)=abs(abs(p18(2))-abs(p14(2)));
        pause(0.1)
end
PF=mean(R_F)
q=sprintf('puntuación total: %s',mean(R_F));
disp(q)
if PF==1
    disp('Nivel de riesgo: Inapreciable - Intervención y posterior análisis: No necesario')
elseif 2<=PF && PF<4
    disp('Nivel de riesgo: Bajo - Intervención y posterior análisis: Puede ser necesario')
elseif 4<=PF && PF<8
    disp('Nivel de riesgo: Medio - Intervención y posterior análisis: Necesario')
elseif 8<=PF && PF<11
    disp('Nivel de riesgo: Alto - Intervención y posterior análisis: Necesario pronto')
else
    disp('Nivel de riesgo: Muy Alto - Intervención y posterior análisis: Actuación inmediata')
end
d = linspace(0,100,(s(1)/3));
%Suavizado
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
title('Muñeca Izquierda')
axis([0 100 0 90])
subplot(2,5,10); plot(d,s_theta6,d,15+d-d,'g')
title('Muñeca Derecha')
axis([0 100 0 90])

figure
plot(d,R_F)
title('Valoración Funcional')

%    Centro                Izquierda                     Derecha

% 21 Espalda            5  Hombro izquierdo           9  Hombro derecho
% 3  Cuello             6  Codo izquierdo             10 Codo derecho
% 4  Cabeza             7  Muñeca izquierda           11 Muñeca derecha
% 2  Espalda media      8  T-Dedo Inicial izquierdo   12 T-Dedo Inicial derecho
% 1  Espalda baja       22 T-Dedo Final izquierdo     24 T-Dedo Final derecho
%                       23 T-Pulgar izquierdo         25 T-Pulgar derecho
%                       13 Cadera izquierda           17 Cadera derecha
%                       14 Rodilla izquierda          18 Rodilla derecha
%                       15 Tobillo izquierdo          19 Tobillo derecho
%                       16 Pie izqueirdo              20 Pie derecho