load venues
%x = imread('world.jpg');
%imshow(x);
%���ϻ�����һ��û�о�����Ϣ�������ͼ
%R = makeremat()
%���»����˱궨������
h = worldmap('world');
figure
lat = venues(1:10000,2);
long = venues(1:10000,3);
%axesm mercator
%plotm(lat,long,'y.')
geoshow(lat,long,'marker','.','MarkerEdgeColor','red')
%hold on
%plot(2,2,'r.','MarkerSize',10)
%��ηŵ�һ��ͼ��





%x_Mercator = longitude * 20037508.34/180;
%y_Mercator = log(tan((latitude + 90) * pi /360))/(pi/180)* 20037508.34/180;
%figure

%image(img);
%hold on
%axis([-20037508.34, 20037508.34, -20037508.34, 20037508.34])
%plot(x_Mercator,y_Mercator, 'y.', 'MarkerSize',10, 'LineWidth',3);
%hold on
%image(img)


