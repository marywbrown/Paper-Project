%Similarity of users
%Cosin Similarity
%但是没有注意上下需要满足 对这个项目都存在评分的用户集
I = R; 
I(I>0) = 1;
averUser = sum(R,2) ./ sum(I,2);
cov = [m,m];
for u=1:m
    cov(:,u) = sum(repmat((R(u,:) - averUser(u)),[m,1]) .* (R - repmat(averUser,[1,n])),2);
end
%标准差
SDij = sqrt(sum((R - repmat(averUser,[1,n])).^2,2));
SD = repmat(SDij,[1,m]) .* repmat(SDij',[m,1]);
Cosin = cov ./ SD;

%余弦相似度
%请搞清楚什么是协方差和标准差，在PCC中；余弦和PCC的区别在哪里？！