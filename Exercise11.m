clear;
clc;
close all;

h1 = [1 2 3 4 4 3 2 1];
h2 = [1 2 3 4 3 2 1];
h3 = [-1 -2 -3 -4 3 3 2 1];
h4 = [-1 -2 -3 0 3 2 1];

[H1,w1] = freqz(h1,1,512);
[H2,w2] = freqz(h2,1,512);
[H3,w3] = freqz(h3,1,512);
[H4,w4] = freqz(h4,1,512);

figure;
subplot(4,2,1);
plot(w1/pi,abs(H1));
ylabel('FIR1');
subplot(4,2,2);
plot(w1/pi, angle(H1));

subplot(4,2,3);
plot(w2/pi, abs(H2));
ylabel('FIR2');
subplot(4,2,4);
plot(w2/pi, angle(H2));

subplot(4,2,5);
plot(w3/pi, abs(H3));
ylabel('FIR3');
subplot(4,2,6);
plot(w3/pi, angle(H3));

subplot(4,2,7);
plot(w4/pi, abs(H4));
ylabel('FIR4');
xlabel('Frequency w/pi');
subplot(4,2,8);
plot(w4/pi, angle(H4));
xlabel('Frequency w/pi');

figure;
subplot(2,2,1);
zplane(h1,1);
title('FIR1');
xlabel('Real Part');
ylabel('Imaginary Part');

subplot(2,2,2);
zplane(h2,1);
title('FIR2');
xlabel('Real Part');
ylabel('Imaginary Part');

subplot(2,2,3);
zplane(h3,1);
title('FIR3');
xlabel('Real Part');
ylabel('Imaginary Part');

subplot(2,2,4);
zplane(h4,1);
title('FIR4');
xlabel('Real Part');
ylabel('Imaginary Part');
