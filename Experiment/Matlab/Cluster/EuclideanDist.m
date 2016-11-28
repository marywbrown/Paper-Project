% Euclidean Distance Calculate
% Input 'Data' is 2-dimensionality vectors sets
% Output 'distMat' is a Marix 
% Eg. Data = [1,2;3,4;5,6;7,8]
% Author: Manrui Li
% Time: 2016/11/18

function distMat = EuclideanDist(Data)
row = size(Data,1);
Mat1_x = repmat(Data(:,1),[1,row]);
Mat1_y = repmat(Data(:,2),[1,row]);
Mat2_x = Mat1_x';
Mat2_y = Mat1_y';
distMat =sqrt((Mat1_x - Mat2_x).^2 + (Mat1_y -Mat2_y).^2); 
end