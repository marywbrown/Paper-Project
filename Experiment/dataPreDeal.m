% 重新为选择的NYC地区的数据编号，这里只编写了Rating的数据
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