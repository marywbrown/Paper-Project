% SVD Algorithm in Recommender System
% Batch learning of SVD
% Input:  User_Item Rating Matrix 'R'
% Output: Predict Matrix 'P'
% Author: Manrui Li
% Date:   2016/11/20
% Reference: http://blog.csdn.net/wangyuquanliuli/article/details/43850931
%            Student Zhilin Zhao's code (from sysu school)

%res = zeros(iteration,1);
rmin = 0;
rmax = 5;
%km,kn,kc regularization coeffcients
km = 0;
kn = 0.01;
kb = 0.01;
ks = 0;
%learning rate
g=0.001;          

for iteration=1:100
    %U,M,alpha,beta的初值有更好的赋值方法么？
    U = 0.1 * rand(m,k) ./ sqrt(k);
    M = 0.1 * rand(n,k) ./ sqrt(k);
    I = R;
    I(I > 0) = 1;
    rMean = sum(sum(R)) ./ sum(sum(I));
    alpha = zeros(m,1);
    beta = zeros(n,1);
    P =repmat(rMean,[m,n]) +  U*M' + repmat(alpha,[1,n]) + repmat(beta',[m,1]);
    %update U
    for i = 1:m
    dUi = sum(repmat(I(i,:) .* (R(i,:) - P(i,:))',[1,k]) .* M) - ku * U(i,:) + ks * sum(sim(:,i) * (repmat(U(1,:),[m,1])-U));
    U(i,:) = U(i,:) + lr .* dUi(i,:);
    end
    %update M
    for j = 1:n
    dMj = sum(repmat(I(:,j) .* (R(:,j) - P(:,j)),[1,k]) .* U) - kn * M(j,:);
    M(i,:) = M(i,:) + lr .* dMi(i,:);
    end
    %update algha
    alpha = alpha + g.*(sum((R - P).*I,2) - kb.*alpha);
    %update beta
    beta = beta + g.*(sum((R - P).*I,1)' - kb.*beta); 
    %update P
    P =repmat(rMean,[m,n]) +  U*M' + repmat(alpha,[1,n]) + repmat(beta',[m,1]);
    P(P > rmax) = rmax;
    P(P < rmin) = rmin;
    % Error
    RMSE = RMSE(R,P);
    MAE = MAE(R,P);
end




