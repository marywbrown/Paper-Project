load('locatNYC.Rdata')
#经纬度转Wev墨卡托
x = as.numeric(locatNYC[,1] *20037508.34/180);
y = as.numeric(log(tan((90 +locatNYC[,2])*pi/360))/(pi/180)*20037508.34/180);
locations = list(c(x),c(y));
dbscan(locations,0.2,MinPts = 10,scale= TRUE,showplot = 1);
