Y=[ones(1,100) repmat(2,1,100)]';
load 2d-L1-c1.txt
load 2d-L1-c2.txt
X1=[X2d_L1_c1' X2d_L1_c2'];
[T1,Z1]=fda(X1,Y,1);
[TL1,ZL1]=LFDA(X1,Y,1,'orthonormalized');
Z1=Z1';
ZL1=ZL1';
scatter(X2d_L1_c1(:,1),X2d_L1_c1(:,2),'g');
hold on;
scatter(X2d_L1_c2(:,1),X2d_L1_c2(:,2),'b');
plot(Z1(:,1),Z1(:,2),'r');
plot(ZL1(:,1),ZL1(:,2),'m');
legend('','','FDA','LFDA');
saveas(gcf,'fda1.png');

load 2d-L2-c1.txt
load 2d-L2-c2.txt
X2=[X2d_L2_c1' X2d_L2_c2'];
[T2,Z2]=fda(X2,Y,1);
[TL2,ZL2]=LFDA(X2,Y,1,'orthonormalized');
Z2=Z2';
ZL2=ZL2';
figure();
scatter(X2d_L2_c1(:,1),X2d_L2_c1(:,2),'g');
hold on;
scatter(X2d_L2_c2(:,1),X2d_L2_c2(:,2),'b');
plot(Z2(:,1),Z2(:,2),'r');
plot(ZL2(:,1),ZL2(:,2),'m');
legend('','','FDA','LFDA');
saveas(gcf,'fda2.png');

Y3=[ones(1,200) repmat(2,1,100)]';
load 2d-L3-c1.txt
load 2d-L3-c2.txt
X3=[X2d_L3_c1' X2d_L3_c2'];
[T3,Z3]=fda(X3,Y3,1);
[TL3,ZL3]=LFDA(X3,Y3,1,'orthonormalized');
Z3=Z3';
ZL3=ZL3';
figure();
scatter(X2d_L3_c1(:,1),X2d_L3_c1(:,2),'g');
hold on;
scatter(X2d_L3_c2(:,1),X2d_L3_c2(:,2),'b');
plot(Z3(:,1),Z3(:,2),'r');
plot(ZL3(:,1),ZL3(:,2),'m');
legend('','','FDA','LFDA');
saveas(gcf,'fda3.png');
