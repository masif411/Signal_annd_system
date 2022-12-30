
%Implement y(t)=X(t-to)

t=0:7;
x=[4 5 1 2 5 8 3 6];

subplot(2,1,1);
stem(t,x);                                          
xlim([-5 10]);
title('Original Signal');

to=input('Enter a Number to shift signal: ');     
   
subplot(2,1,2);
stem(t-to,x);
xlim([-to-5 -to+12]);
title('Shifted Signal');
