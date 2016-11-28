% input mapLat0, mapLong0, mapLat1, mapLong1, mapLat2, mapLong2
map = imread('Map.jpg');
[mapH,mapW,~] = size(map);
mapLong = [mapLat0, mapLong0; mapLat1, mapLong1; mapLat2, mapLong2];

map_x = mapLong(:,2) * 20037508.34/180;
map_y = log(tan((mapLat(:,1) + 90) * pi /360))/(pi/180)* 20037508.34/180;

worldimgW = mapW / (map_x(1) - map_x(0)) * 20037508.34 * 2
worldimgH = mapW / (map_y(2) - map_y(0)) * 20037508.34 * 2


[x,y] = mercatorProjection(data(:,2), data(:,1), worldimgW, worldimgH);
%# plot markers on map
imshow(img, 'Border','tight');
hold on

%µ÷Õû×ø±ê£¡?!
plot(x - abs(map_x(0))* 2,y - map_y(0) *2, 'y.', 'MarkerSize',10, 'LineWidth',3);
