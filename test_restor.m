% load image
load lena_degraded
z = lena_degraded;
clear lena_degraded

% image size
[K,L] = size(z);
fprintf(1,'The image size is %d x %d\n',K,L);


% display image
figure(1)
imshow(z)

% indices corresponding to tearing
indJ = ; % TO BE COMPLETED
fprintf(1,'Tearing represents %f %% of the image\n',length(indJ)/K/L);

% indices of complemetary area
indI = ; % TO BE COMPLETED
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% q4 : gradient algorithm for minimizing g o L

nitm = 15000; % maximum number of iterations

beta = 8; % Lipshitz constant of the gradient

gamma = 1.9/beta; % step-size of the algorithm

clear cost
xr = z;
for nit = 1:nitm
    [v,h] = grad(xr);
    xr = ; % TO BE COMPLETED
    cost(nit) = (norm(v,'fro')^2+norm(h,'fro')^2)/2;
    fprintf(1,'%d : cost=%g\n',nit,cost(nit));
end

figure(2)
imshow(xr)
title('Restored image with quadratic cost')
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% q6-8 : projected gradient algorithm for minimizing g o L subject to constraint

rho = 0.2*sqrt(K*L);
precc = 1e-6; % precision for stopping criterion

clear cost
xr = z;
for nit = 1:nitm
    [v,h] = grad(xr);
    xr = ; % TO BE COMPLETED
    xr = projballl2(xr,z,rho,indI);
    cost(nit) = (norm(v,'fro')^2+norm(h,'fro')^2)/2;
    fprintf(1,'%d : cost=%g\n',nit,cost(nit));
    if % TO BE COMPLETED
         break
    end

end

figure(3)
subplot(121)
imshow(xr)
title('Restored image with constraint')
subplot(122)
plot(cost)
title('Convergence plot')
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% q10 : projected gradient algorithm for minimizing smoothed total variation
% subject to constraint


eta = 5e-3; % smoothing parameter for total variation
beta2 = % TO BE COMPLETED; % Lipshitz constant of the gradient

gamma2 = 1.9/beta2;  % step-size of the algorithm

clear cost
xr = z;
for nit = 1:nitm
    % TO BE COMPLETED

end

figure(4)
subplot(121)
imshow(xr)
title('Restored image with smoothed TV')
subplot(122)
plot(cost)
title('Convergence plot')
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% q11 : accelerated algorithm

gamma3 = 1/beta2;  % step-size of the algorithm
zeta = 2.1; % inertia parameter

clear cost
xr = z;
y = xr;
for nit = 1:nitm
        % TO BE COMPLETED
end

figure(5)
subplot(121)
imshow(xr)
title('Restored image with smoothed TV')
subplot(122)
plot(cost)
title('Convergence plot with acceleration')

