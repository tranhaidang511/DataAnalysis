function [out cnt]=kmc(in,k,c)

[~,n]=size(in);
K = zeros(n,n);
for row = 1:n
    for col = 1:row
        temp = sum(((in(:,row) - in(:,col)).^2));
        K(row,col) = exp(-temp/c^2);
    end
end
K = K + K'; 
for row = 1:n
    K(row,row) = K(row,row)/2;
end

out=zeros(n,1);
tmp=randi(k,n,1);
nom=zeros(k,1);
cnt=0;
while ~isequal(out,tmp)
    out=tmp;
    for i=1:n
        for j=1:k
            nk=size(in(:,tmp==j),2);
            nom(j)=sum(sum(K(tmp==j,tmp==j)))/nk^2-sum(K(i,tmp==j))*2/nk;
        end
        [~,tmp(i)]=min(nom);
    end
    cnt=cnt+1;
end