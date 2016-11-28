% Extrac venues data in New York City
% New York City longitude and latitude
% r0 =£¨40.7530£¬-73.9760£©,r = 0.3004 is the geographical location of New York City
lat0 = 40.7530;
long0 = -73.9760;
r = 0.3004;
lat = venues(:,2);
long = venues(:,3);
% extract Venues in New York City
indexVenues = find( ((lat-lat0).^2 + (long-long0).^2) < r^2 );
venuesID = (venues(indexVenues,1));
locatNYC = venues(indexVenues,1:3);
% extract Ratings in New York City
% un is an unimportant parameter
[un,indexRating] = intersect(ratings(:,2),venuesID);
RatingNYC = ratings(indexRating,:);
% extract Users in New York City
[un,indexUser] = intersect(users,RatingNYC(:,1));
UserNYC = users(indexUser,:);


