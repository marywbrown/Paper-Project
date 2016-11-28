% DBSCAN Algorithm
% 去除重复的地点，减小工作量
% 计算点与点之间的距离
% clear;
% Input Data & r & MinPts
r = 1;
MinPTs = 2;
locatData = test;

% 转化坐标点

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
    % 判断N中的点是否已经访问过，如果已经访问过就不管了,取出没有访问过的点unvisitN
    % 和这些点在元数据的序号unvisitPtsIndex
    [unvisitN,b] = intersect(N,unvisited,'rows');
    unvisitPtsIndex = find(distMat(PtsIndex(b),:) > r);
    visited = [unvisitN;visited];
    unvisit = 666; %这里要把unvisited里面的去掉！
    
    
    if length(unvisitPtsIndex) >= MinPts
    end
        
        
    
    
    %添加点p直接可达点p'为已经访问点
    %pn = ;
    visited = [intersect(N,unvisited,'rows');visited];
    %直接可达点若也为核心点，将直接可达点范围内的点加到簇C内
    [a,index_pn] = intersect(locatData,pn,'rows');
    PNIndexList = find(distMat(index_pn,:) > r);
    %setdiff(locatNYC(NIndexList,:),unvisited)
end











