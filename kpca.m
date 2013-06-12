function data_out = kpca(data_in,c,num_dim)

if num_dim > size(data_in,1)
    fprintf('\nDimensions of output data has to be lesser than the dimensions of input data\n');
    fprintf('Closing program\n');
    return
end

n=size(data_in,2);
K = zeros(n,n);
for row = 1:n
    for col = 1:row
        temp = sum(((data_in(:,row) - data_in(:,col)).^2));
        K(row,col) = exp(-temp/c^2);
    end
end
K = K + K'; 
for row = 1:n
    K(row,row) = K(row,row)/2;
end

H=eye(n)-ones(n,n)./n;
[eigvec eig_val] = eig(H*K*H);
for col = 1:size(eigvec,2)
    eigvec(:,col) = eigvec(:,col)./(sqrt(eig_val(col,col)));
end
[~, index] = sort(eig_val,'descend');
eigvec = eigvec(:,index(1:num_dim));
data_out = eigvec'*H*K*H;
