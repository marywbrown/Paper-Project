% DBSCAN Algorithm
% ȥ���ظ��ĵص㣬��С������
% ��������֮��ľ���
% clear;
% Input Data & r & MinPts
r = 1;
MinPTs = 2;
locatData = test;

% ת�������

% Gemerate a distance Matrix 'distMat'
distMat = EuclideanDist(locatData);

unvisited = locatData;
visited = [];
noise = [];
i = 0;
% Choose a random coordinate p0 in unvisited locations
p0 = unvisited(randi([1 size(unvisited,1)]),:);
setdiff(unvisited,p0,'rows');
visited = [visited;p0];
% If p0 is a core points or not; 
[p0,index] = intersect(locatData,p0,'rows');
PtsIndex = find(distMat(index,:) > r);

if length(PtsIndex) < MinPTs
    noise = [noise;p0];
end

if length(PtsIndex) >= MinPTs
    C = [];
    C = [C;p0];
    % Ci = C
    i =+ 1;
    eval(['C',num2str(i),'=C;']);
    
    N = locatData(PtsIndex,:);
    % �ж�N�еĵ��Ƿ��Ѿ����ʹ�������Ѿ����ʹ��Ͳ�����,ȡ��û�з��ʹ��ĵ�unvisitN
    % ����Щ����Ԫ���ݵ����unvisitPtsIndex
    [unvisitN,b] = intersect(N,unvisited,'rows');
    unvisitPtsIndex = find(distMat(PtsIndex(b),:) > r);
    visited = [unvisitN;visited];
    unvisit = 666; %����Ҫ��unvisited�����ȥ����
    
    
    if length(unvisitPtsIndex) >= MinPts
    end
        
        
    
    
    %��ӵ�pֱ�ӿɴ��p'Ϊ�Ѿ����ʵ�
    %pn = ;
    visited = [intersect(N,unvisited,'rows');visited];
    %ֱ�ӿɴ����ҲΪ���ĵ㣬��ֱ�ӿɴ�㷶Χ�ڵĵ�ӵ���C��
    [a,index_pn] = intersect(locatData,pn,'rows');
    PNIndexList = find(distMat(index_pn,:) > r);
    %setdiff(locatNYC(NIndexList,:),unvisited)
end











