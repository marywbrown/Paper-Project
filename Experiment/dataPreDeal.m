% ����Ϊѡ���NYC���������ݱ�ţ�����ֻ��д��Rating������
rate = RatingNYC;
umax = max(rate(:,1));
imax = max(rate(:,2));
R = sparse([]);
lenList = size(rate,1);

for i=1:lenList
    userid = rate(i,1);
    itemid = rate(i,2);
    R(userid,itemid) = rate(i,3);
end
R(find(sum(abs(R'))==0),:)=[];
R(:,find(sum(abs(R))==0))=[];
save R R