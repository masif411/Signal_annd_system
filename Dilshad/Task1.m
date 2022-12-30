
n=0:382;
p=n;
v=ones(1,10);

a1=length(p);               %Find the length of a signal
A2=length(v);

N=a1+A2-1;                   %find the length of y(n)
p=[p,zeros(1,N-a1)];         
v=[v,zeros(1,N-A2)];
y=zeros(1, N);              %Initialize the output with zero
%perform convolution
for n=1:N
    for k=1:n
        y(n)=y(n)+p(k)*v(n-k+1);
    end
end
disp(y);
%plot the inputs and outputs.
b=0:N-1;
subplot(4,1,1);
stem (b,p); 
title ('First sequence');

subplot (4, 1, 2);
stem (b,v);
title('Second sequence');

subplot (4, 1, 3);
stem (b,y);
title('Convoluted Signal');

x=conv(p,v);                 % Convolutio by using conv
subplot (4, 1, 4);
stem (x);  
title('Convoluted Signal by using conv');