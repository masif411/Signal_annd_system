t=0:0.01:6;
x=sin(t);

subplot(3,1,1)
plot(t,x)
xlim([-5 15])
title('Original Signal')


subplot(3,1,2)
plot(2*t,x)
xlim([-5 15])
title('Expanded Signal')

subplot(3,1,3)
plot(t/2,x)
xlim([-5 15])
title('Compressed Signal')