%k=2;

%load 2d-6.txt;
%[c cnt]=lmc(X2d_6',k);
%[c cnt]=kmc(X2d_6',k);
%figure();
%Xc=X2d_6(c==1,:);
%scatter(Xc(:,1),Xc(:,2),30,[1 0 0]);
%hold on;
%Xc=X2d_6(c==2,:);
%scatter(Xc(:,1),Xc(:,2),30,[0 1 0]);

%load 2d-7.txt;
%[c cnt]=lmc(X2d_7',k);
%[c cnt]=kmc(X2d_7',k,0.6);
%figure();
%Xc=X2d_7(c==1,:);
%scatter(Xc(:,1),Xc(:,2),30,[1 0 0]);
%hold on;
%Xc=X2d_7(c==2,:);
%scatter(Xc(:,1),Xc(:,2),30,[0 1 0]);

load 2d-L3-c1.txt;
load 2d-L3-c2.txt;
X=[X2d_L3_c1' X2d_L3_c2']';
%[c cnt]=lmc(X',2);
[c cnt]=kmc(X',2,5);
figure();
Xc=X(c==1,:);
scatter(Xc(:,1),Xc(:,2),30,[1 0 0]);
hold on;
Xc=X(c==2,:);
scatter(Xc(:,1),Xc(:,2),30,[0 1 0]);
Xc=X(c==3,:);
scatter(Xc(:,1),Xc(:,2),30,[0 0 1]);
