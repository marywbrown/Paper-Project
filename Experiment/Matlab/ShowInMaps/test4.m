load venues
%x = imread('world.jpg');
%imshow(x);
%以上画出了一个没有具体信息的世界地图
%R = makeremat()
%以下画出了标定的坐标
h = worldmap('world');
figure
lat = venues(1:10000,2);
long = venues(1:10000,3);
%axesm mercator
%plotm(lat,long,'y.')
geoshow(lat,long,'marker','.','MarkerEdgeColor','red')
%hold on
%plot(2,2,'r.','MarkerSize',10)
%如何放到一幅图？





%x_Mercator = longitude * 20037508.34/180;
%y_Mercator = log(tan((latitude + 90) * pi /360))/(pi/180)* 20037508.34/180;
%figure

%image(img);
%hold on
%axis([-20037508.34, 20037508.34, -20037508.34, 20037508.34])
%plot(x_Mercator,y_Mercator, 'y.', 'MarkerSize',10, 'LineWidth',3);
%hold on
%image(img)


