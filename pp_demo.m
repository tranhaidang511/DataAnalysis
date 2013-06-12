%load 2d-3.txt;
%[b Z]=pp(X2d_3',0.1);
%scatter(X2d_3(:,1),X2d_3(:,2),30,[0 0 1]);

%load 2d-4.txt;
%[b Z cnt]=pp(X2d_4',10000);
%scatter(X2d_4(:,1),X2d_4(:,2),30,[0 0 1]);

Xd=rand(2000,2);
X=Xd(Xd(:,1)<0.5,:);
X=(X-ones(size(X))*[0.25 0;0 0.5])*2;
[b bt Z cnt]=pp(X',0.2);
scatter(X(:,1),X(:,2),30,[0 0 1]);

hold on
%line([-b(1);b(1)]*2,[-b(2);b(2)]*2,'Color',[1 0 0]);
%line([-b(1);b(1)]*4,[-b(2);b(2)]*4,'Color',[1 0 0]);
line([-b(1);b(1)],[-b(2);b(2)],'Color',[1 0 0]);
figure();
hist(Z,20);