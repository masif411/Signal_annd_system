
[x,fs]=audioread('Original.wav');    %read audio file
N=length(x);
vlcplayer=audioplayer(x,fs);
vlcplayer.play

t=fft(x,N);
X=fftshift(t);
f=-fs/2:fs/N:(fs/2-fs/N);        %frequency boundry
figure(1)
plot(f,abs(X))
title ('original Signal')

Xr=zeros(1,N);
Xr((N*((60/100)/2))+1:N*(1-(60/100)/2))=X((N*((60/100)/2))+1:N*(1-(60/100)/2));
figure(2)
plot(f,abs((Xr)));
xr=real(ifft(fftshift(Xr)));
audiowrite('60%compressed.wav',xr,fs);
title('60% compressed audio')
xlabel('Freq'); ylabel('Magnitude');
