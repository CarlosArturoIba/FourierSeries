function FourierSeries = Fs(T,w,nn,a,b,p,nt,T1,f1,T2,f2,T3,f3)

% a : Extremo  1 del vector de tiempo 
% b : Extremo  2 del vector de tiempo 
% p : Paso del vector de tiempo
% nt: Numero de tramos de la funcion 
% T : Periodo
% w : Frecuencia angula 
% n : Numero de terminos de la serie 
% ft: Funcion definida en el intervalo 
%Variables de entrada 
%Tr : Intervalo 
%Ft : Funsion 
%Variables de salida
%Grafico de funcion a trozos
t = a:p:b
if nt == 2
    f=(((T1)).*(f1) + ((T2)).*(f2))
    plot(t,f, "LineWidth",2)
end
if nt == 3
    f=(((T1)).*(f1) + ((T2)).*(f2) + ((T3)).*(f3))
    plot(t,f, "LineWidth",2)
end
syms t nn 
A0 = (2/T)*(int(-1,t,-pi,(-pi./2)) + int(1,t,(-pi./2),(pi./2)) + int(-1,t,(pi./2),(pi)))
An = (2/T)*(int(-cos(nn.*w.*t),t,-pi,(-pi./2)) + int(cos(nn.*w.*t),t,(-pi./2),(pi./2)) + int(-cos(nn.*w.*t),t,(pi./2),(pi)))
Bn = (2/T)*(int(-sin(nn.*w.*t),t,-pi,(-pi./2)) + int(sin(nn.*w.*t),t,(-pi./2),(pi./2)) + int(-sin(nn.*w.*t),t,(pi./2),(pi)))
for nn=1:1:N;
    T = 2*pi
    w=2*pi/T
    an=(5734161139222659*sin((pi*nn)/2))/(9007199254740992*nn) - (5734161139222659*(sin(pi*nn) - sin((pi*nn)/2)))/(9007199254740992*nn)
    bn=0;
    sum=sum+an.*cos(nn*t)+bn.*sin(nn*t);
end
end


