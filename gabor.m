clear
clc
% Fourier dictionary D(f(omega,t))
K = 128;

atoms = 1000;
t0 = 40e-6;
tf = t0 + 20e-6;
D = zeros(K,atoms); %Dictionary
% for f = 1:150
%     for s = 1<

omega = linspace(0,pi,K);
phi = linspace(0,2*pi,K);
alphaz = 0.1;
A = 0.5;
s = 64;
du = 16;
domega = pi/64;
% omega = linspace(1,s-1,100);
for k = 1:K
    for i = 1:s-1
        h = exp(-((k-s/2).^2) / 2.*(alphaz*s).^2);
        g = A*h*cos(k*omega(i) + phi(k));
    end
end
D(:,1) = g;
r = zeros(atoms,1);
r(1) = 1;
y = D*r;

figure(1)
imageplot(g(1:end/2+1))

figure(2)
plot(y)