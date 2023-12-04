close all; clear; clc

%% Variables
f_0 = 5e3;
f_s = 30e3;
omega_0 = 2*pi*f_0;
omega_s = 2*pi*f_s;


%% Function
H_ZOH = @(omega) exp(-1i.*omega./2).*sin(omega./2)./(omega./2); % Zero order hold anonymous function

%% Values
x_vec = linspace(0.00001,20,300); % x values

%% Desired frequencys and amplitudes
omega_f = pi/3
omega_1 = pi*5/3
omega_2 = pi*7/3
omega_3 = pi*11/3

amp_f = abs(H_ZOH(omega_f))*pi
amp_1 = abs(H_ZOH(omega_1))*pi
amp_2 = abs(H_ZOH(omega_2))*pi
amp_3 = abs(H_ZOH(omega_3))*pi

%% Plots
y = abs(H_ZOH(x_vec)*pi );
figure()
plot(x_vec,y)
hold on
scatter(omega_f, amp_f,'k', 'filled')
scatter(omega_1, amp_1,'b', 'filled')
scatter(omega_2, amp_2,'g', 'filled')
scatter(omega_3, amp_3,'r', 'filled')
legend('Frequency Response', 'Fundamental Component', 'First Component', 'Second Component', 'Third Component')