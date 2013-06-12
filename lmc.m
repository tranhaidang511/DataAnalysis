function [out cnt]=lmc(in,k)

[p n]=size(in);
mu=zeros(p,k);
%for i=1:k
%    mu(:,i)=in(:,i);
%end

mu(:,1)=in(:,1);
mu(:,2)=in(:,101);
mu(:,3)=in(:,301);

%mu=rand(p,k)*2-1;
out=ones(n,1);
tmp=zeros(n,1);
nom=zeros(k,1);
cnt=0;
while out~=tmp
    out=tmp;
    for i=1:n
        for j=1:k
            nom(j)=norm(in(:,i)-mu(:,j));
        end
        [~,tmp(i)]=min(nom);
    end
    for i=1:k
        mu(:,i)=sum(in(:,tmp==i),2)/size(in(:,tmp==i),2);
    end
    cnt=cnt+1;
end