%load s-curve.txt;
%tmp_mean = mean(s_curve,1); 
%s_curve = s_curve - repmat(tmp_mean,2000,1); 
%scatter3(s_curve(:,1),s_curve(:,2),s_curve(:,3),30,abs(s_curve(:,3)-s_curve(:,1)));
%s=kle(s_curve',3);

x=zeros(2000,3);
x(:,1)=rand(2000,1);
x(:,2)=rand(2000,1);
x(:,3)=sqrt(1-(x(:,2)-0.5).*(x(:,2)-0.5));
scatter3(x(:,1),x(:,2),x(:,3),30,abs(x(:,2)));
s=kle(x',2);

s=s';
figure();
scatter(s(:,1),s(:,2),30,abs(x(:,2)));