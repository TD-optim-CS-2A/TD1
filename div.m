function f = div(v,h)
%f = div(v,h): computes the divergence (adjoint of the spatial
% gradient)
% v : input vertical gradient
% h : inout horizontal gradient
% f : output image

[K,L] = size(v);

f = zeros(K+1,L+1);

n = 1:K;
m = 1:L;

f(n+1,m) = v;
f(n,m) = f(n,m)-v;
f(n,m+1) = f(n,m+1)+h;
f(n,m) = f(n,m)-h;
