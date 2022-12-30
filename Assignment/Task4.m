t=0:5;
x=[2 1 3 5 7 2];

subplot(2,1,1)
stem(t,x)
xlim([-5 10])
title('Original Signal')

to=input('Enter a Number')
if to>0
    a=-to;
    b=0;
elseif to<0
    a=0;
    b=-to;
else
    a=0;
    b=0;
end
   
subplot(2,1,2)
stem(t-to,x)
xlim([a-5 b+10])
title('Shifted Signal')
