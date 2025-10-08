clear;
clc;
close all;

M1 = 20;
M2 = 64;
wc = 1;
n1 = 0:M1;
n2 = 0:M2;

h_LP1 = sin(wc*(n1-M1/2))./(pi*(n1-M1/2));
h_LP1(n1==M1/2) = wc/pi;

h_LP2 = sin(wc*(n2-M2/2))./(pi*(n2-M2/2));
h_LP2(n2==M2/2) = wc/pi;

H_LP1 = fft(h_LP1,1024);
H_LP2 = fft(h_LP2,1024);

w = linspace(-pi,pi,1024);

figure;
subplot(2,1,1);
stem(n1,h_LP1,'filled');
grid on;
title(sprintf('Impulse Response h_{LP}( n ), M = %d',M1));
xlabel('n');
ylabel('h_{LP}( n )');

subplot(2,1,2);
plot(w/pi,abs(fftshift(H_LP1)),'LineWidth',1.2);
grid on;
title(sprintf('Magnitude Response |H_{LP}(e^{jw})|, M = %d',M1));
xlabel('w/pi');
ylabel('|H_{LP}|');

figure;
subplot(2,1,1);
stem(n2,h_LP2,'filled');
grid on;
title(sprintf('Impulse Response h_{LP}( n ), M = %d',M2));
xlabel('n');
ylabel('h_{LP}( n )');

subplot(2,1,2);
plot(w/pi,abs(fftshift(H_LP2)),'LineWidth',1.2);
grid on;
title(sprintf('Magnitude Response |H_{LP}(e^{jw})|, M = %d',M2));
xlabel('w/pi');
ylabel('|H_{LP}|');

figure;
subplot(2,2,1);
stem(n1,h_LP1,'filled');
grid on;
title(sprintf('Impulse Response h_{LP}( n ), M = %d',M1));
xlabel('n');
ylabel('h_{LP}( n )');

subplot(2,2,3);
plot(w/pi,abs(fftshift(H_LP1)),'LineWidth',1.2);
grid on;
title(sprintf('Magnitude Response |H_{LP}(e^{jw})|, M = %d',M1));
xlabel('w/pi');
ylabel('|H_{LP}|');

subplot(2,2,2);
stem(n2,h_LP2,'filled');
grid on;
title(sprintf('Impulse Response h_{LP}( n ), M = %d',M2));
xlabel('n');
ylabel('h_{LP}( n )');

subplot(2,2,4);
plot(w/pi,abs(fftshift(H_LP2)),'LineWidth',1.2);
grid on;
title(sprintf('Magnitude Response |H_{LP}(e^{jw})|, M = %d',M2));
xlabel('w/pi');
ylabel('|H_{LP}|');
