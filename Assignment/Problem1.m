
n=0:360;
x=n;
h=ones(1,10);

n1=length(x);               %Find the length of a signal
n2=length(h);

N=n1+n2-1;                   %find the length of y(n)
x=[x,zeros(1,N-n1)];         %zero padding to make the length=N
h=[h,zeros(1,N-n2)];
y=zeros(1, N);              %Initialize the output with zero
%perform linear convolution
for n=1:N
    for k=1:n
        y(n)=y(n)+x(k)*h(n-k+1);
    end
end
disp(y);
%plot the inputs and outputs.
ny=0:N-1;
subplot(4,1,1);
stem (ny,x); 
title ('First sequence');

subplot (4, 1, 2);
stem (ny,h);
title('Second sequence');

subplot (4, 1, 3);
stem (ny,y);
title('Convoluted Signal');

a=conv(x,h);                 % Convolutio by using conv command
subplot (4, 1, 4);
stem (a);  
title('Convoluted Signal by using conv');