clear;
clc;

zmin=0.01;
zmax=8;
r=0.4;
Nz=50;
z0=linspace(zmin,zmax,Nz);

% N=1;                   %%% 一个初始点给出的样本数
h=0.001;
alpha=1.2;
sigma=0.05;
T=500;
nT=T/h;
t=linspace(0,T,nT+1);
xf=zeros(Nz,nT);
xf(:,1)=z0';

%%% Generate data
M=h^(1/alpha)*stblrnd(alpha,0,1,0,Nz,nT);
for i=1:nT
    z0=xf(:,i);
    xf(:,i+1)=z0+(r*z0-0.75*(z0.^3))*h+sigma*z0.*M(:,i);
end

figure;
for i=1:Nz
    plot(t,xf(i,:));
    hold on
end
axis([0 T -5 5])
hold off
