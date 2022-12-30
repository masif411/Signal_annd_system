t=0:5;
x=[0 3 5 4 3 0];

subplot(3,1,1)
stem(t,x)
xlim([-20 20])
title('Original Signal')


subplot(3,1,2)
stem(2*t,x)
xlim([-20 20])
title('Expanded Signal')

subplot(3,1,3)
stem(t/2,x)
xlim([-20 20])
title('Compressed Signal')
