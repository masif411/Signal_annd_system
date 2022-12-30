
[x,fs]=audioread("original.wav");
N=length(x);
vlcplayer=audioplayer(x,fs);
vlcplayer.play

t=fft(x,N);
X=fftshift(t);
f=-fs/2:fs/N: (fs/2-fs/N);
figure(1)
plot(f,abs(X))
title("Original signal")

Xr = zeros(1,N);
Xr((N/4)+1: (3*N/4)) = X((N/4)+1:(3*N/4));
figure(2)
plot(f,abs((Xr)));
xr=real (ifft(fftshift(Xr))); %Reconstruction
audiowrite('50%compressed.wav',xr,fs);
title("50%compressed audio");xlabel("Freq(Hz)"); ylabel("Magnitude");
%%changing ratio to 60,70,80,90,95%, just change line 15 to:

%Xr((N*((90/100)/2))+1 : N*(1-(90/100)/2))= X((N* ((90/100)/2))+1 : N*(1-(90/100)/2));
%Xr((N*((95/100)/2))+1 : N*(1-(95/100)/2))= X((N* ((95/100)/2))+1 : N*(1-(95/100)/2));
%%changing each one to a diff wav file to be heard on desktop:

%audiowrite("90 compressed.wav",xr,fs);
%audiowrite("95 compressed.wav",xr,fs);