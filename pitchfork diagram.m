clear; 
r=-5:0.01:5;r1=0:0.01:5;
f1=@(r)0*r;
f2=@(r)2*sqrt(r/3);
f3=@(r)(-2)*sqrt(r/3);
figure
plot(r,f1(r),'r');
hold on
plot(r1,f1(r1),'b');
hold on
plot(r1,f2(r1),'r');
hold on
plot(r1,f3(r1),'r');
fsize=15;
xlabel('\gamma','Fontsize',fsize);
ylabel('\phi','Fontsize',fsize);
