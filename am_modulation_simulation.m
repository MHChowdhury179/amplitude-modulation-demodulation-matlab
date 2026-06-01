clc;        % Clears previous data from command window
clear all;  % Removes all variables from the current workspace
close all;  % Closes all previous figure windows

m = input('Modulation Index = ');  % Modulation index

Am = 5;      % Amplitude of the modulating signal
f = 2000;    % Frequency
T = 1/f;     % Time period of modulating signal

t = 0:T:0.2;

fa = 20;     % Message frequency

% Message signal
ym = Am * sin(2*pi*fa*t);

% Plotting modulating signal
subplot(3,1,1)
plot(t, ym)
title('Modulating Signal')
xlabel('Time')
ylabel('Amplitude')
grid on

% Carrier signal
Ac = Am / m;     % Carrier amplitude
fc = fa * 10;    % Carrier frequency
Tc = 1/fc;       % Time period of carrier signal

yc = Ac * sin(2*pi*fc*t);

% Plotting carrier signal
subplot(3,1,2)
plot(t, yc)
title('Carrier Signal')
xlabel('Time')
ylabel('Amplitude')
grid on

% AM modulation
y = Ac * (1 + m*sin(2*pi*fa*t)) .* sin(2*pi*fc*t);

% Plotting amplitude modulated signal
subplot(3,1,3)
plot(t, y)
title('Amplitude Modulated Signal')
xlabel('Time')
ylabel('Amplitude')
grid on
