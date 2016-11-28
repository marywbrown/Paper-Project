% Error ！！ MAE in Recommendaer System
% Input:  R ！！ rating matrix ,P！！ predict rating matrix
% Output: MAE
% Author: Manrui Li
% Date:   2016/11/20

function MAE = MAE(R,P)
% MAE
I = R; I(I>0)=1;
MAE = sum(sum(abs((R - P).* I)))/nnz(I);
end
