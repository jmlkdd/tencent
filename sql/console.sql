# coding=utf-8
# author=zhoujiamu

create table test(
   instanceID VARCHAR(10) NOT NULL,
   label VARCHAR(2) NOT NULL,
   clickTime VARCHAR(6) NOT NULL,
   creativeID VARCHAR(10),
   userID VARCHAR(10),
   positionID VARCHAR(10),
   connectionType VARCHAR(2),
   telecomsOperator VARCHAR(2)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/test.csv' INTO TABLE test
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM test WHERE instanceID='instanceID';
SELECT count(*) FROM test;


create table train(
   label VARCHAR(2) NOT NULL,
   clickTime VARCHAR(6) NOT NULL,
   conversionTime VARCHAR(10),
   creativeID VARCHAR(10),
   userID VARCHAR(10),
  positionID VARCHAR(10),
  connectionType VARCHAR(2),
  telecomsOperator VARCHAR(2)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/train.csv' INTO TABLE train
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM train WHERE label='la';
SELECT count(*) FROM train;


create table ad(
   creativeID VARCHAR(10),
   adID VARCHAR(10),
   camgaignID VARCHAR(10),
   advertiserID VARCHAR(10),
   appID VARCHAR(10),
   appPlatform VARCHAR(10)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/ad.csv' INTO TABLE ad
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM ad WHERE creativeID='creativeID';
SELECT count(*) FROM ad;


create table app_categories(
   appID VARCHAR(10),
  appCategory VARCHAR(10)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/app_categories.csv' INTO TABLE app_categories
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM app_categories WHERE appID='appID';
SELECT count(*) FROM app_categories;


create table positions(
  positionID VARCHAR(10),
  sitesetID VARCHAR(10),
  positionType VARCHAR(10)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/position.csv' INTO TABLE positions
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM positions WHERE positionID='positionID';
SELECT count(*) FROM positions;


create table user(
   userID VARCHAR(10) NOT NULL,
   age VARCHAR(2),
   gender VARCHAR(2),
   education VARCHAR(10),
   marriageStatus VARCHAR(10),
  haveBaby VARCHAR(10),
  hometown VARCHAR(10),
  residence VARCHAR(2)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/user.csv' INTO TABLE user
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM user WHERE userID='userID';
SELECT count(*) FROM user;


create table user_app_actions(
   userID VARCHAR(10),
  installTime VARCHAR(10),
  appID VARCHAR(10)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/user_app_actions.csv' INTO TABLE user_app_actions
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM user_app_actions WHERE userID='userID';
SELECT count(*) FROM user_app_actions;


create table user_installedapps(
   userID VARCHAR(10),
   appID VARCHAR(10)
);

LOAD DATA LOCAL INFILE '/Users/haizhi/Desktop/Tencent/pre/user_installedapps.csv' INTO TABLE user_installedapps
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM user_installedapps WHERE userID='userID';
SELECT count(*) FROM user_installedapps;
