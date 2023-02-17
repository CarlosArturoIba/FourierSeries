function Trozos = FTrozos(a,b,p,nt,T1,f1,T2,f2,T3,f3)
% a : Extremo  1 del vector de tiempo 
% b : Extremo  2 del vector de tiempo 
% p : Paso del vector de tiempo
% nt: Numero de tramos de la funcion 
% T : Intervalo de la funcion 
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

end

