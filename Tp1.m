t=0:0.1:1;
x=2*sin(4*pi*t);
y=7*sin(8*pi*t);
z=0.5*sin(12*pi*t);
w=x+y+z;
subplot(2,2,1)
plot(t,x)
legend('Fonction x')
title('Représentation des fonctions trigonométriques')
xlabel('t')
ylabel('Amplitude')
subplot(2,2,2)
plot(t,y)
legend('Fonction y')
title('Représentation des fonctions trigonométriques')
xlabel('t')
ylabel('Amplitude')
subplot(2,2,3)
plot(t,z)
legend('Fonction z')
title('Représentation des fonctions trigonométriques')
xlabel('t')
ylabel('Amplitude')
subplot(2,2,4)
plot(t,w)
legend('Fonction w')
title('Représentation des fonctions trigonométriques')
xlabel('t')
ylabel('Amplitude')

