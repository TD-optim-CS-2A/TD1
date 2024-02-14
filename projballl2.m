function p = projballl2(xr,z,rho,indI)
%projection of xr onto the l2 semi-ball || x(indI)-z(indI) || <= rho
% xr : vector to be projected
% z : center of the ball
% rho : radius of the ball
% indI : indices of the contrained components
% p : computed projection

no = norm(xr(indI)-z(indI));

p = xr;

if no > rho
    p(indI) = ; % TO BE COMPLETED
end
