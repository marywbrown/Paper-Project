% THIS FUNCTION CAN ONLY USE IN WORLD MAP ANNOTATION
% Width is the world picture width
% Height is the world picture height
function [x,y] = mercatorProjection(lon, lat, width, height)
    x = mod((lon+180)*width/360, width) ;
    y = height/2 - log(tan((lat+90)*pi/360))*width/(2*pi);
end