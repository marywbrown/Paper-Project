%Similarity of users
%Cosin Similarity
%����û��ע��������Ҫ���� �������Ŀ���������ֵ��û���
I = R; 
I(I>0) = 1;
averUser = sum(R,2) ./ sum(I,2);
cov = [m,m];
for u=1:m
    cov(:,u) = sum(repmat((R(u,:) - averUser(u)),[m,1]) .* (R - repmat(averUser,[1,n])),2);
end
%��׼��
SDij = sqrt(sum((R - repmat(averUser,[1,n])).^2,2));
SD = repmat(SDij,[1,m]) .* repmat(SDij',[m,1]);
Cosin = cov ./ SD;

%�������ƶ�
%������ʲô��Э����ͱ�׼���PCC�У����Һ�PCC�������������