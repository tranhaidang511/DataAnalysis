function data_out=kle(X,dim)

N=size(X,2);
if size(X, 1) > N 
    error('Number of samples should be higher than number of dimensions.'); 
end 
if ~exist('dim', 'var') 
    dim = 2;  
end 

% Compute affinity matrix W 
%    W = find_nn(X, k); 
W=zeros(N,N);
    
%   Distance-based
%    for i=1:N
%        for j=1:N
%            W(i,j)=exp(-1*norm(X(:,i)-X(:,j))^2);
%        end
%    end

%   Nearest-neighbor-based
    k = 10;
    d=zeros(N);
    for i=1:N
        for j=1:N
            d(j)=norm(X(:,i)-X(:,j));
        end
        [~,e]=sort(d);
        for j=1:k
            W(i,e(j))=1;
            W(e(j),i)=1;
        end
    end

%   Local scaling heuristic
%k = 7;
%d=zeros(N,1);
%gamma=zeros(N,1);
%for i=1:N
%    for j=1:N
%        d(j)=norm(X(:,i)-X(:,j));
%    end
%    [d,~]=sort(d);
%    gamma(i)=d(k);
%end
%for i=1:N
%    for j=1:i
%        W(i,j)=exp(-1*norm(X(:,i)-X(:,j))^2)/(gamma(i)*gamma(j));
%    end
%end
%W = W + W'; 
%for i=1:N
%    W(i,i) = W(i,i)/2;
%end

% Compute degree and Laplacian of affinity matrix 
D = diag(sum(W)); 
L = D - W; 
   
%    A = X*L*X';
%    C = X*D*X';

[eigvector,eigvalue] = eig(L,D);

% Sort eigenvalues in descending order and get largest eigenvectors 
[~, ind] = sort(diag(eigvalue)); 
B = eigvector(:,ind(2:dim)); 
data_out = B';  