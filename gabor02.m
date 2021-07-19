clear
clc

K = 256;

atoms = 2*K;
freqs = 2*K;
Dt = zeros(K,atoms,freqs); %Dictionary

alphaz = 0.3;
A = 0.5;

omega = linspace(0,pi,2*K);

k = linspace(0,K,K);
for f = 1:atoms
    for u = 1:atoms
        h = envl(u,K,alphaz);
        Dt(:,u,f) = h.*cos(k*omega(f));
    end
end

r = zeros(atoms,atoms);
r(end-240,end/2) = 20;
r(end-160,end/2) = 10;
r(end-80,end/2) = 05;
y = zeros(K,1);
for i = 1:atoms
    y = y + Dt(:,:,i)*r(:,i); %synthesis
end

figure(2)
plot(y)
legend('synthesis')
axis tight

figure(3)
clf
imageplot(r)
ylabel('Frequency')
xlabel('Time')
axis tight
