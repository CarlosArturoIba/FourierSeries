t  = -3:0.01:3
T=2*pi
w=(2*pi)/T
syms t n 
h0=int(-1,t,-pi,-pi/2)
g0=int(1,t,-pi/2,pi/2)
k0=int(-1,t,pi/2,pi)
l0=(2/T).*(h0+g0+k0)

hc=int(-cos(n.*w.*t),t,-pi,-pi/2)
gc=int(cos(n.*w.*t),t,-pi/2,pi/2)
kc=int(-cos(n.*w.*t),t,pi/2,pi)
lc=(2/T).*(hc+gc+kc)

hs=int(-sin(n.*w.*t),t,-pi,-pi/2)
gs=int(sin(n.*w.*t),t,-pi/2,pi/2)
ks=int(-sin(n.*w.*t),t,pi/2,pi)
ls=(2/T).*(hs+gs+ks)
