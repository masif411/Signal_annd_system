
t=-3:1:3;
x=[0 0 0 1 1 1 1];

xmt=[fliplr(x(t>=0)) fliplr(x(t<0))];

xe=0.5*(xmt+x);
xo=0.5*(x-xmt);

subplot(3,1,1);
stem(t,x);
title('Your signal x')
subplot(3,1,2);
stem(t,xe);
title('Even part')
subplot(3,1,3);
stem(t,xo);
title('Odd part')