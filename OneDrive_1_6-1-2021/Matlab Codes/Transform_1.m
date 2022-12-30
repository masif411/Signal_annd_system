t=-4:6;
x=[0 3 5 7 8 10 8 6 4 3 0];

subplot(3,1,1)
stem(t,x)
xlim([-10 12])
title('Original Signal')


subplot(3,1,2)
stem(t-2,x)
xlim([-10 12])
title('Advance Signal')

subplot(3,1,3)
stem(t+2,x)
xlim([-10 12])
title('Delayed Signal')