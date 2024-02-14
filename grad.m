function [v,h] = grad(f)
%[v,h] = grad(f): computes spatial gradients of image f
% f : input image
% v : vertical gradient
% h : horizontal gradient

[K,L] = size(f);

n = 1:K-1;
m = 1:L-1;

v = f(n+1,m)-f(n,m); 
h = f(n,m+1)-f(n,m);
