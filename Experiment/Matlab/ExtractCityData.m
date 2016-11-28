% Only extrac venues data in New York City
% r0 =£¨40.7530£¬-73.9760£©,r = 0.3004 is the geographical location of New York City
lat0 = 40.7530;
long0 = -73.9760;
r = 0.3004;
lat = venues(:,2);
long = venues(:,3);
index = find( (lat-lat0).^2 + (long-long0).^2 < r^2 );
locatNYC = venues(index,2:3);