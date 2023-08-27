% Signal Geneartion examples
figure(3)
% Signal 1: 10 Hz signal with Sample rate of 200Hz over 2 secs
fc=10; % frequency of carrier
fs=20*fc; %sampling frequency with oversampling factor of 32
t=0:1/fs:2-1/fs;%2 seconds duration
x=sin(2*pi*fc*t);%time domain signal(real number)
subplot(3,1,1);
plot(t,x);

% plot cosine wave of 2 second duration
% with a frequency for 10 Hz and sampling rate of 200Hz
title('x[n]=sin(2*pi*10*t)');
xlabel('n');
ylabel('x[n]');


% Signal 2: N Hz signal with sample rate of 100 Hz over 1 second
fs = 100; % sample rate in Hz
t = 0:1/fs:1; % time vector in seconds
test_sig = sin(2*pi*fs*t);

% Signal 3: Simple sinusoid generation
sig = sin(2*pi*t*5); % 5hz signal
subplot(3,1,2);
plot(t,sig);

% plot cosine wave of 2 second duration
% with a frequency for 100 Hz and sampling rate of 200Hz
title('x[n]=sin(2*pi*t*5)');
xlabel('n');
ylabel('x[n]');


% Signal 4: Noisy vector
noise = randn(size(sig))*0.1; % noisy vector of same size as sig

% Signal 5: Noisy Signal
sigNoisy= sig + noise;
subplot(3,1,3);
plot(t,sigNoisy);

% plot cosine wave of 2 second duration
% with a frequency for 100 Hz and sampling rate of 200Hz
title('x[n]=sig + noise');
xlabel('n');
ylabel('x[n]');

figure(2)
% Signal 6: Square signal
sq = square(2*pi*t*5);
subplot(2,1,1);
plot(t,sq);
hold on; 
% plot cosine wave of 2 second duration
% with a frequency for 100 Hz and sampling rate of 200Hz
title('x[n]=square(2*pi*t*5)');
xlabel('n');
ylabel('x[n]');

% Signal 7: Noisy Square signal
sqNoisy = sq + noise;
subplot(2,1,2);
plot(t,sqNoisy);
hold on; 

% plot cosine wave of 2 second duration
% with a frequency for 100 Hz and sampling rate of 200Hz
title('x[n]=sq + noise');
xlabel('n');
ylabel('x[n]');

figure(4)
% Signal 8: Cosine wave at 10Hz
fc=10;%frequency of the carrier
fs=32*fc;%sampling frequency with oversampling factor=32
t=0:1/fs:2-1/fs;%2 seconds duration
x=cos(2*pi*fc*t);%time domain signal (real number)
subplot(1,1,1); plot(t,x);hold on; %plot the signal
title('x[n]=cos(2 \pi 10 t)'); xlabel('n'); ylabel('x[n]');
