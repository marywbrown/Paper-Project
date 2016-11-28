% Error ！！ RMSE in Recommendaer System
% Input:  R ！！ rating matrix ,P！！ predict rating matrix
% Output: RMSE
% Author: Manrui Li
% Date:   2016/11/20

function RMSE = RMSE(R,P)
% RMSE
I = R; I(I>0)=1;
RMSE = sqrt(sum(sum(((R - P) .* I).^2)) ./ nnz(I));
end
