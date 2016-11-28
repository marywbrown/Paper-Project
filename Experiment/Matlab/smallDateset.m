idNum = 1000;
% Abstract small set of data to test the programe
userSmall = users(find(users(:,1) < idNum),:);
venuesSmall = venues(find(venues(:,1) < idNum),:);
ratingSmall = ratings(find(ratings(:,1) < idNum & ratings(:,2) < idNum),:);
