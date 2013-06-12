function [signals,PC,V,N,rindices] = pca(data,m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[~,N] = size(data);
mn = mean(data,2);
data = data-repmat(mn,1,N);
covariance = data*data';
[PC,V] = eig(covariance);
V = diag(V);
[~,rindices] = sort(-1*V);
rindices=rindices(1:m);
V = V(rindices);
PC = PC(:,rindices);
signals = PC'*data;
end