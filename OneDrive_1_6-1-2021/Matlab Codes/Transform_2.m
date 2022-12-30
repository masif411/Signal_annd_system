t=0:0.001:6;
x=sin(t);


subplot(3,1,1)
plot(t,x)
xlim([-10 12])
title('Original Signal')


subplot(3,1,2)
plot(t-2,x)
xlim([-10 12])
title('Advance Signal')

subplot(3,1,3)
plot(t+2,x)
xlim([-10 12])
title('Delayed Signal')