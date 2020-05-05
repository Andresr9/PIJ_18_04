clc
clear
%filename= 'SUJETO3_PRUEBA1.txt';
%A=importdata(filename);
%A=importdata('SUJETO3_PRUEBA1.txt');
% Importar Matriz Kinescan a Matlab
filename = 'S4_PRUEBA_1_nameless.txt';
delimiterIn = ' ';
headerlinesIn = 1;
A = importdata(filename,delimiterIn,headerlinesIn);
%[A,delimiterOut]=importdata(filename)
%Extraer puntos útiles de la matriz Kinescan
M_C=A(:,46:108);

%Ordenar Matriz con puntos útiles kinescan P1: P21 
M_Ord=M_C(:,[31:33, 40:63, 1:30, 34:39]);


MK=zeros(size(M_Ord,1)*3,size(M_Ord,2)/3);
v=[];
k=1;
%%%%%%

for i = 1:1:size(M_Ord,1);
    v=[];
    for j=1:3:size(M_Ord,2);
        v=[v M_Ord(i,j:j+2)'];
    end
    %MK=Matriz Kinescan
    MK(k:k+2,:) = v;
    k=k+3;
end

%Modificar posición coordenadas y en z
%MK1=Matriz Kinescan útil
MK1=MK;
for i=2:3:size(MK1,1);
    MK1([i i+1],:)=MK1([i+1 i],:);
end


