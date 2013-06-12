%load 2d-8.txt;
%load 2d-9.txt;
%load 2d-7.txt;
%z=kle(X2d_8',2);
%z=kle(X2d_9',2);
%z=kle(X2d_7',2);
%[c cnt]=lmc(z,2);
%[c cnt]=kmc(z,2,100);
%z=z';
%figure();
%Xc=z(c==1,:);
%scatter(Xc,zeros(size(Xc)),30,[1 0 0]);
%hold on;
%Xc=z(c==2,:);
%scatter(Xc,zeros(size(Xc)),30,[0 1 0]);

%figure();
%Xc=X2d_8(c==1,:);
%Xc=X2d_9(c==1,:);
%Xc=X2d_7(c==1,:);
%scatter(Xc(:,1),Xc(:,2),30,[1 0 0]);
%hold on;
%Xc=X2d_8(c==2,:);
%Xc=X2d_9(c==2,:);
%Xc=X2d_7(c==2,:);
%scatter(Xc(:,1),Xc(:,2),30,[0 1 0]);

%X=zeros(1500,3);
%X(1:500,:)=rand(500,3)*0.5;
%X(501:1000,1:2)=rand(500,2);
%for i=501:1000
%    X(i,3)=sqrt(2-X(i,1)*X(i,1)-X(i,2)*X(i,2));
%end
%X(1001:1500,1:2)=rand(500,2)*2;
%for i=1001:1500
%    X(i,3)=sqrt(4-X(i,1)*X(i,1));
%end
%figure();
%scatter3(X(1:500,1),X(1:500,2),X(1:500,3),30,[1 0 0]);
%hold on;
%scatter3(X(501:1000,1),X(501:1000,2),X(501:1000,3),30,[0 1 0]);
%scatter3(X(1001:1500,1),X(1001:1500,2),X(1001:1500,3),30,[0 0 1]);

%X=zeros(600,2);
%X(1:100,:)=rand(100,2)*0.2-0.1;
%X(101:300,1)=rand(200,1)-0.5;
%for i=101:300
%    X(i,2)=sqrt(0.36-rand(1,1)*0.11-X(i,1)*X(i,1))*(randi(2,1,1)*2-3);
%end
%X(301:600,1)=rand(300,1)*2-1;
%for i=301:600
%    X(i,2)=sqrt(2-rand(1,1)*0.21-X(i,1)*X(i,1))*(randi(2,1,1)*2-3);
%end
XX=rand(10000,2)*2-1;
ind=zeros(10000,1);
for i=1:10000;
    T=XX(i,1)*XX(i,1)+XX(i,2)*XX(i,2);
    ind(i)=((T<0.0025)|((T>0.0625)&(T<0.09))|((T>0.9025)&(T<1)));
end
%figure();
%scatter(X(1:100,1),X(1:100,2),30,[1 0 0]);
%hold on;
%scatter(X(101:300,1),X(101:300,2),30,[0 1 0]);
%scatter(X(301:600,1),X(301:600,2),30,[0 0 1]);
X=XX(ind==1,:);

z=kle(X',3);
[c cnt]=kmc(z,3,100);
z=z';

figure();
Xc=z(c==1,:);
scatter(Xc(:,1),Xc(:,2),30,[1 0 0]);
hold on;
Xc=z(c==2,:);
scatter(Xc(:,1),Xc(:,2),30,[0 1 0]);
Xc=z(c==3,:);
scatter(Xc(:,1),Xc(:,2),30,[0 0 1]);

figure();
Xc=X(c==1,:);
scatter(Xc(:,1),Xc(:,2),30,[1 0 0]);
hold on;
Xc=X(c==2,:);
scatter(Xc(:,1),Xc(:,2),30,[0 1 0]);
Xc=X(c==3,:);
scatter(Xc(:,1),Xc(:,2),30,[0 0 1]);