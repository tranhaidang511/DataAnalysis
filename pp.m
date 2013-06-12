function [b bt Z cnt]=pp(X,epsilon)
[p n]=size(X);
H=eye(n)-ones(n,n)./n;
[eigvec eigval]=eig((X*H*H*X')./n);
P=eigvec*sqrt(eigval)*eigvec';
%Xt=inv(P)*X*H;
Xt=P\(X*H);
b=zeros(p,1);
bt=ones(p,1);
cnt=0;
while (b~=bt)&(cnt<2000)
    cnt=cnt+1;
    b=bt;
    x4=0;
    x3=zeros(p,1);
    for i=1:n
        x4=x4+sum(b.*Xt(:,i))^4;
        x3=x3+sum(b.*Xt(:,i))^3*Xt(:,i);
    end
    bt=b+epsilon*(x4/n-3)/n*x3;
    bt=bt/norm(bt);
end
Z=zeros(n,1);
for i=1:n
    Z(i)=sum(b.*Xt(:,i));
end