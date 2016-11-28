% Show原图？经纬先转化为平面再聚类啦！！
coordinate = locatNYC;
figure;
plot(coordinate(:,1),coordinate(:,2),'.');
title 'Location Data';

% k-means聚类
figure
[kID,centroids] = kmeans(coordinate,10,'Distance','cityblock','Replicates',5);
plot(coordinate(kID==1,1),coordinate(kID==1,2),'.','Color',[1 0 0],'MarkerSize',12)
hold on
plot(coordinate(kID==2,1),coordinate(kID==2,2),'.','Color',[0 1 0],'MarkerSize',12)
plot(coordinate(kID==3,1),coordinate(kID==3,2),'.','Color',[0 0 1],'MarkerSize',12)
plot(coordinate(kID==4,1),coordinate(kID==4,2),'.','Color',[0 0.5 0.5],'MarkerSize',12)
plot(coordinate(kID==5,1),coordinate(kID==5,2),'.','Color',[0.5 0.5 0],'MarkerSize',12)
plot(coordinate(kID==6,1),coordinate(kID==6,2),'.','Color',[0.5 0 0.5],'MarkerSize',12)
plot(coordinate(kID==7,1),coordinate(kID==7,2),'.','Color',[1 1 0],'MarkerSize',12)
plot(coordinate(kID==8,1),coordinate(kID==8,2),'.','Color',[1 0 1],'MarkerSize',12)
plot(coordinate(kID==9,1),coordinate(kID==9,2),'.','Color',[0 1 1],'MarkerSize',12)
plot(coordinate(kID==10,1),coordinate(kID==10,2),'.','Color',[0.4 0.7 0.2],'MarkerSize',12)
%plot(centroids(:,1),centroids(:,2),'kx',...
%     'MarkerSize',15,'LineWidth',3)
%legend('Cluster 1','Cluster 2','Centroids',...
%       'Location','NW')
%title 'Cluster Assignments and Centroids'
%hold off

figure
[kID,centroids] = kmeans(coordinate,10,'Distance','sqEuclidean','Replicates',5);
plot(coordinate(kID==1,1),coordinate(kID==1,2),'.','Color',[1 0 0],'MarkerSize',12)
hold on
plot(coordinate(kID==2,1),coordinate(kID==2,2),'.','Color',[0 1 0],'MarkerSize',12)
plot(coordinate(kID==3,1),coordinate(kID==3,2),'.','Color',[0 0 1],'MarkerSize',12)
plot(coordinate(kID==4,1),coordinate(kID==4,2),'.','Color',[0 0.5 0.5],'MarkerSize',12)
plot(coordinate(kID==5,1),coordinate(kID==5,2),'.','Color',[0.5 0.5 0],'MarkerSize',12)
plot(coordinate(kID==6,1),coordinate(kID==6,2),'.','Color',[0.5 0 0.5],'MarkerSize',12)
plot(coordinate(kID==7,1),coordinate(kID==7,2),'.','Color',[1 1 0],'MarkerSize',12)
plot(coordinate(kID==8,1),coordinate(kID==8,2),'.','Color',[1 0 1],'MarkerSize',12)
plot(coordinate(kID==9,1),coordinate(kID==9,2),'.','Color',[0 1 1],'MarkerSize',12)
plot(coordinate(kID==10,1),coordinate(kID==10,2),'.','Color',[0.4 0.7 0.2],'MarkerSize',12)
