%# GPS positions (latitude,longitude) of some markers

data = locatNYC;
%venues(:,2:3); %? 没有反？

labels = {
    '位置A'
    '位置B'
};

%# world map in Mercator projection;
img = imread('world.jpg');
[imgH,imgW,~] = size(img);
%# Mercator projection
[x,y] = mercatorProjection(data(:,2), data(:,1), imgW, imgH);

%# plot markers on map
imshow(img,'Border','tight');
hold on
plot(x,y, 'y.', 'MarkerSize',10, 'LineWidth',3);
%text(x, y, labels, 'Color','w', 'VerticalAlign','bottom', 'HorizontalAlign','right')
%line(x,y, 'LineStyle', '--', 'LineWidth', 2, 'Color', 'r');hold off





