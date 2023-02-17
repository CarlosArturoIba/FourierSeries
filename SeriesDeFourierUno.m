disp=('Serie de Fourier 1')
N=input('Introduce el número de armonicos:  ')
t  = -pi:0.01:pi
T1 = ((t>=-pi)&(t<(-pi/2))).*(-1)
T2 = ((t>(-pi/2))&(t<(pi/2))).*(1)
T3 = ((t>(pi/2))&(t<(pi))).*(-1)
Ft = T1 + T2 + T3
plot(t,Ft,"LineWidth",2)
hold on

t=[-pi:0.01:pi];
a0 =0
sum= a0
for n=1:1:N;
    T = 2*pi
    w=2*pi/T
    an=(5734161139222659*sin((pi*n)/2))/(9007199254740992*n) - (5734161139222659*(sin(pi*n) - sin((pi*n)/2)))/(9007199254740992*n)
    bn=0;
    sum=sum+an.*cos(n*t)+bn.*sin(n*t);
end

plot(t,sum)
grid on
