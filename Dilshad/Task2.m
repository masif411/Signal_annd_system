subplot(2,1,1);
sys=tf(1,[1,2]);
impulse(sys)
subplot(2,1,2);
t=0:0.01:10;
p=t>=0;
x=5*(exp(3*t)).*p;
y=lsim(sys,x,t);

plot(t,y)
