t=0:5;
x=[0 3 5 4 3 0];

subplot(2,1,1)
stem(t,x)
xlim([-20 20])
title('Original Signal')


subplot(2,1,2)
stem(-1*t,x)
xlim([-20 20])
title('Reverse Signal')

