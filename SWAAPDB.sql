/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - swaap
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`swaap` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `swaap`;

/*Table structure for table `branch_table` */

DROP TABLE IF EXISTS `branch_table`;

CREATE TABLE `branch_table` (
  `id` int(11) NOT NULL auto_increment,
  `branch_name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `username` varchar(255) default NULL,
  `cityVO` int(11) default NULL,
  `stateVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKsh89y1h390xgg7aw32g8bwnyo` (`cityVO`),
  KEY `FKj4ja7ylu34kpwnvo5d94luvw` (`stateVO`),
  CONSTRAINT `FKj4ja7ylu34kpwnvo5d94luvw` FOREIGN KEY (`stateVO`) REFERENCES `state_table` (`id`),
  CONSTRAINT `FKsh89y1h390xgg7aw32g8bwnyo` FOREIGN KEY (`cityVO`) REFERENCES `city_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `branch_table` */

insert  into `branch_table`(`id`,`branch_name`,`password`,`status`,`username`,`cityVO`,`stateVO`) values (1,'Naranpura','branch1','','branch1@gmail.com',268,12),(2,'Panjrapole','branch2','','branch2@gmail.com',634,29),(3,'Jor Bagh','branch3','','branch3@gmail.com',973,9),(4,'Satellite','rainamshah','','rainams98@gmail.com',268,12);

/*Table structure for table `cart_table` */

DROP TABLE IF EXISTS `cart_table`;

CREATE TABLE `cart_table` (
  `id` int(11) NOT NULL auto_increment,
  `status` bit(1) default NULL,
  `login_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `product_quantity_bought` int(11) default NULL,
  `order_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKqqdpyk2dfje9bum8rsy3y7ku4` (`login_id`),
  KEY `FKphru3q25sogwctpiwiq8id9p0` (`product_id`),
  KEY `FK1mvqus7kbrmjerf1afgd3p5eb` (`order_id`),
  CONSTRAINT `FK1mvqus7kbrmjerf1afgd3p5eb` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`id`),
  CONSTRAINT `FKphru3q25sogwctpiwiq8id9p0` FOREIGN KEY (`product_id`) REFERENCES `product_table` (`id`),
  CONSTRAINT `FKqqdpyk2dfje9bum8rsy3y7ku4` FOREIGN KEY (`login_id`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart_table` */

insert  into `cart_table`(`id`,`status`,`login_id`,`product_id`,`product_quantity_bought`,`order_id`) values (1,'',3,2,2,1),(2,'',3,2,3,3),(3,'',3,2,4,4),(4,'',3,25,1,5),(5,'',3,5,1,6),(6,'',3,2,1,7),(7,'',3,19,1,7),(8,'',3,2,1,8),(9,'',3,23,1,9),(10,'',3,22,1,10),(11,'',3,21,1,11),(12,'',3,22,1,11),(13,'',3,4,1,12),(14,'',3,2,1,13),(15,'',3,4,1,13),(16,'',3,47,1,14),(17,'',3,47,1,15),(18,'',3,48,1,15),(19,'',7,47,1,16),(20,'',7,48,1,16);

/*Table structure for table `category_table` */

DROP TABLE IF EXISTS `category_table`;

CREATE TABLE `category_table` (
  `id` int(11) NOT NULL auto_increment,
  `category_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category_table` */

insert  into `category_table`(`id`,`category_name`,`status`) values (1,'Food',''),(2,'Clothes',''),(3,'Accessories',''),(4,'Electronics',''),(5,'Home and Kitchen',''),(6,'Health and Personal Care',''),(7,'Sports and Fitness',''),(8,'Beauty','');

/*Table structure for table `checklist_table` */

DROP TABLE IF EXISTS `checklist_table`;

CREATE TABLE `checklist_table` (
  `id` int(11) NOT NULL auto_increment,
  `refill_approval_date` varchar(255) default NULL,
  `checklist_status` varchar(255) default NULL,
  `request_date` varchar(255) default NULL,
  `request_quantity` int(11) default NULL,
  `status` bit(1) default NULL,
  `product_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKjcgskvma441rb9dnpwdgpp6px` (`product_id`),
  CONSTRAINT `FKjcgskvma441rb9dnpwdgpp6px` FOREIGN KEY (`product_id`) REFERENCES `product_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `checklist_table` */

/*Table structure for table `city_table` */

DROP TABLE IF EXISTS `city_table`;

CREATE TABLE `city_table` (
  `id` int(11) NOT NULL auto_increment,
  `city_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `stateVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKq0vvcky1ohfwwqcubbl7qflc6` (`stateVO`),
  CONSTRAINT `FKq0vvcky1ohfwwqcubbl7qflc6` FOREIGN KEY (`stateVO`) REFERENCES `state_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city_table` */

insert  into `city_table`(`id`,`city_name`,`status`,`stateVO`) values (268,'Ahmedabad','',12),(634,'Jaipur','',29),(761,'Alipur','',1),(762,'Andaman Island','',1),(763,'Anderson Island','',1),(764,'Arainj-Laka-Punga','',1),(765,'Austinabad','',1),(766,'Bamboo Flat','',1),(767,'Barren Island','',1),(768,'Beadonabad','',1),(769,'Betapur','',1),(770,'Bindraban','',1),(771,'Bonington','',1),(772,'Brookesabad','',1),(773,'Cadell Point','',1),(774,'Calicut','',1),(775,'Chetamale','',1),(776,'Cinque Islands','',1),(777,'Defence Island','',1),(778,'Digilpur','',1),(779,'Dolyganj','',1),(780,'Flat Island','',1),(781,'Geinyale','',1),(782,'Great Coco Island','',1),(783,'Haddo','',1),(784,'Havelock Island','',1),(785,'Henry Lawrence Island','',1),(786,'Herbertabad','',1),(787,'Hobdaypur','',1),(788,'Ilichar','',1),(789,'Ingoie','',1),(790,'Inteview Island','',1),(791,'Jangli Ghat','',1),(792,'Jhon Lawrence Island','',1),(793,'Karen','',1),(794,'Kartara','',1),(795,'KYD Islannd','',1),(796,'Landfall Island','',1),(797,'Little Andmand','',1),(798,'Little Coco Island','',1),(799,'Long Island','',1),(800,'Maimyo','',1),(801,'Malappuram','',1),(802,'Manglutan','',1),(803,'Manpur','',1),(804,'Mitha Khari','',1),(805,'Neill Island','',1),(806,'Nicobar Island','',1),(807,'North Brother Island','',1),(808,'North Passage Island','',1),(809,'North Sentinel Island','',1),(810,'Nothen Reef Island','',1),(811,'Outram Island','',1),(812,'Pahlagaon','',1),(813,'Palalankwe','',1),(814,'Passage Island','',1),(815,'Phaiapong','',1),(816,'Phoenix Island','',1),(817,'Port Blair','',1),(818,'Preparis Island','',1),(819,'Protheroepur','',1),(820,'Rangachang','',1),(821,'Rongat','',1),(822,'Rutland Island','',1),(823,'Sabari','',1),(824,'Saddle Peak','',1),(825,'Shadipur','',1),(826,'Smith Island','',1),(827,'Sound Island','',1),(828,'South Sentinel Island','',1),(829,'Spike Island','',1),(830,'Tarmugli Island','',1),(831,'Taylerabad','',1),(832,'Titaije','',1),(833,'Toibalawe','',1),(834,'Tusonabad','',1),(835,'West Island','',1),(836,'Wimberleyganj','',1),(837,'Yadita','',1),(838,'Adilabad','',2),(839,'Anantapur','',2),(840,'Chittoor','',2),(841,'Cuddapah','',2),(842,'East Godavari','',2),(843,'Guntur','',2),(844,'Hyderabad','',2),(845,'Karimnagar','',2),(846,'Khammam','',2),(847,'Krishna','',2),(848,'Kurnool','',2),(849,'Mahabubnagar','',2),(850,'Medak','',2),(851,'Nalgonda','',2),(852,'Nellore','',2),(853,'Nizamabad','',2),(854,'Prakasam','',2),(855,'Rangareddy','',2),(856,'Srikakulam','',2),(857,'Visakhapatnam','',2),(858,'Vizianagaram','',2),(859,'Warangal','',2),(860,'West Godavari','',2),(861,'Anjaw','',3),(862,'Changlang','',3),(863,'Dibang Valley','',3),(864,'East Kameng','',3),(865,'East Siang','',3),(866,'Itanagar','',3),(867,'Kurung Kumey','',3),(868,'Lohit','',3),(869,'Lower Dibang Valley','',3),(870,'Lower Subansiri','',3),(871,'Papum Pare','',3),(872,'Tawang','',3),(873,'Tirap','',3),(874,'Upper Siang','',3),(875,'Upper Subansiri','',3),(876,'West Kameng','',3),(877,'West Siang','',3),(878,'Barpeta','',4),(879,'Bongaigaon','',4),(880,'Cachar','',4),(881,'Darrang','',4),(882,'Dhemaji','',4),(883,'Dhubri','',4),(884,'Dibrugarh','',4),(885,'Goalpara','',4),(886,'Golaghat','',4),(887,'Guwahati','',4),(888,'Hailakandi','',4),(889,'Jorhat','',4),(890,'Kamrup','',4),(891,'Karbi Anglong','',4),(892,'Karimganj','',4),(893,'Kokrajhar','',4),(894,'Lakhimpur','',4),(895,'Marigaon','',4),(896,'Nagaon','',4),(897,'Nalbari','',4),(898,'North Cachar Hills','',4),(899,'Silchar','',4),(900,'Sivasagar','',4),(901,'Sonitpur','',4),(902,'Tinsukia','',4),(903,'Udalguri','',4),(904,'Araria','',5),(905,'Aurangabad','',5),(906,'Banka','',5),(907,'Begusarai','',5),(908,'Bhagalpur','',5),(909,'Bhojpur','',5),(910,'Buxar','',5),(911,'Darbhanga','',5),(912,'East Champaran','',5),(913,'Gaya','',5),(914,'Gopalganj','',5),(915,'Jamshedpur','',5),(916,'Jamui','',5),(917,'Jehanabad','',5),(918,'Kaimur (Bhabua)','',5),(919,'Katihar','',5),(920,'Khagaria','',5),(921,'Kishanganj','',5),(922,'Lakhisarai','',5),(923,'Madhepura','',5),(924,'Madhubani','',5),(925,'Munger','',5),(926,'Muzaffarpur','',5),(927,'Nalanda','',5),(928,'Nawada','',5),(929,'Patna','',5),(930,'Purnia','',5),(931,'Rohtas','',5),(932,'Saharsa','',5),(933,'Samastipur','',5),(934,'Saran','',5),(935,'Sheikhpura','',5),(936,'Sheohar','',5),(937,'Sitamarhi','',5),(938,'Siwan','',5),(939,'Supaul','',5),(940,'Vaishali','',5),(941,'West Champaran','',5),(942,'Chandigarh','',6),(943,'Mani Marja','',6),(944,'Bastar','',7),(945,'Bhilai','',7),(946,'Bijapur','',7),(947,'Bilaspur','',7),(948,'Dhamtari','',7),(949,'Durg','',7),(950,'Janjgir-Champa','',7),(951,'Jashpur','',7),(952,'Kabirdham-Kawardha','',7),(953,'Korba','',7),(954,'Korea','',7),(955,'Mahasamund','',7),(956,'Narayanpur','',7),(957,'Norh Bastar-Kanker','',7),(958,'Raigarh','',7),(959,'Raipur','',7),(960,'Rajnandgaon','',7),(961,'South Bastar-Dantewada','',7),(962,'Surguja','',7),(963,'Brancavare','',8),(964,'Dagasi','',8),(965,'Daman','',8),(966,'Diu','',8),(967,'Magarvara','',8),(968,'Nagwa','',8),(969,'Pariali','',8),(970,'Passo Covo','',8),(971,'Central Delhi','',9),(972,'East Delhi','',9),(973,'New Delhi','',9),(974,'North Delhi','',9),(975,'North East Delhi','',9),(976,'North West Delhi','',9),(977,'Old Delhi','',9),(978,'South Delhi','',9),(979,'South West Delhi','',9),(980,'West Delhi','',9),(981,'Amal','',10),(982,'Amli','',10),(983,'Bedpa','',10),(984,'Chikhli','',10),(985,'Dadra & Nagar Haveli','',10),(986,'Dahikhed','',10),(987,'Dolara','',10),(988,'Galonda','',10),(989,'Kanadi','',10),(990,'Karchond','',10),(991,'Khadoli','',10),(992,'Kharadpada','',10),(993,'Kherabari','',10),(994,'Kherdi','',10),(995,'Kothar','',10),(996,'Luari','',10),(997,'Mashat','',10),(998,'Rakholi','',10),(999,'Rudana','',10),(1000,'Saili','',10),(1001,'Sili','',10),(1002,'Silvassa','',10),(1003,'Sindavni','',10),(1004,'Udva','',10),(1005,'Umbarkoi','',10),(1006,'Vansda','',10),(1007,'Vasona','',10),(1008,'Velugam','',10),(1009,'Canacona','',11),(1010,'Candolim','',11),(1011,'Chinchinim','',11),(1012,'Cortalim','',11),(1013,'Goa','',11),(1014,'Jua','',11),(1015,'Madgaon','',11),(1016,'Mahem','',11),(1017,'Mapuca','',11),(1018,'Marmagao','',11),(1019,'Panji','',11),(1020,'Ponda','',11),(1021,'Sanvordem','',11),(1022,'Terekhol','',11),(1023,'Amreli','',12),(1024,'Anand','',12),(1025,'Banaskantha','',12),(1026,'Baroda','',12),(1027,'Bharuch','',12),(1028,'Bhavnagar','',12),(1029,'Dahod','',12),(1030,'Dang','',12),(1031,'Dwarka','',12),(1032,'Gandhinagar','',12),(1033,'Jamnagar','',12),(1034,'Junagadh','',12),(1035,'Kheda','',12),(1036,'Kutch','',12),(1037,'Mehsana','',12),(1038,'Nadiad','',12),(1039,'Narmada','',12),(1040,'Navsari','',12),(1041,'Panchmahals','',12),(1042,'Patan','',12),(1043,'Porbandar','',12),(1044,'Rajkot','',12),(1045,'Sabarkantha','',12),(1046,'Surat','',12),(1047,'Surendranagar','',12),(1048,'Vadodara','',12),(1049,'Valsad','',12),(1050,'Vapi','',12),(1051,'Bilaspur','',13),(1052,'Chamba','',13),(1053,'Dalhousie','',13),(1054,'Hamirpur','',13),(1055,'Kangra','',13),(1056,'Kinnaur','',13),(1057,'Kullu','',13),(1058,'Lahaul & Spiti','',13),(1059,'Mandi','',13),(1060,'Shimla','',13),(1061,'Sirmaur','',13),(1062,'Solan','',13),(1063,'Una','',13),(1064,'Ambala','',14),(1065,'Bhiwani','',14),(1066,'Faridabad','',14),(1067,'Fatehabad','',14),(1068,'Gurgaon','',14),(1069,'Hisar','',14),(1070,'Jhajjar','',14),(1071,'Jind','',14),(1072,'Kaithal','',14),(1073,'Karnal','',14),(1074,'Kurukshetra','',14),(1075,'Mahendragarh','',14),(1076,'Mewat','',14),(1077,'Panchkula','',14),(1078,'Panipat','',14),(1079,'Rewari','',14),(1080,'Rohtak','',14),(1081,'Sirsa','',14),(1082,'Sonipat','',14),(1083,'Yamunanagar','',14),(1084,'Anantnag','',15),(1085,'Baramulla','',15),(1086,'Budgam','',15),(1087,'Doda','',15),(1088,'Jammu','',15),(1089,'Kargil','',15),(1090,'Kathua','',15),(1091,'Kupwara','',15),(1092,'Leh','',15),(1093,'Poonch','',15),(1094,'Pulwama','',15),(1095,'Rajauri','',15),(1096,'Srinagar','',15),(1097,'Udhampur','',15),(1098,'Bokaro','',16),(1099,'Chatra','',16),(1100,'Deoghar','',16),(1101,'Dhanbad','',16),(1102,'Dumka','',16),(1103,'East Singhbhum','',16),(1104,'Garhwa','',16),(1105,'Giridih','',16),(1106,'Godda','',16),(1107,'Gumla','',16),(1108,'Hazaribag','',16),(1109,'Jamtara','',16),(1110,'Koderma','',16),(1111,'Latehar','',16),(1112,'Lohardaga','',16),(1113,'Pakur','',16),(1114,'Palamu','',16),(1115,'Ranchi','',16),(1116,'Sahibganj','',16),(1117,'Seraikela','',16),(1118,'Simdega','',16),(1119,'West Singhbhum','',16),(1120,'Alappuzha','',17),(1121,'Alleppey','',17),(1122,'Alwaye','',17),(1123,'Ernakulam','',17),(1124,'Idukki','',17),(1125,'Kannur','',17),(1126,'Kasargod','',17),(1127,'Kochi','',17),(1128,'Kollam','',17),(1129,'Kottayam','',17),(1130,'Kovalam','',17),(1131,'Kozhikode','',17),(1132,'Malappuram','',17),(1133,'Palakkad','',17),(1134,'Pathanamthitta','',17),(1135,'Perumbavoor','',17),(1136,'Thiruvananthapuram','',17),(1137,'Thrissur','',17),(1138,'Trichur','',17),(1139,'Trivandrum','',17),(1140,'Wayanad','',17),(1141,'Bagalkot','',18),(1142,'Bangalore','',18),(1143,'Bangalore Rural','',18),(1144,'Belgaum','',18),(1145,'Bellary','',18),(1146,'Bhatkal','',18),(1147,'Bidar','',18),(1148,'Bijapur','',18),(1149,'Chamrajnagar','',18),(1150,'Chickmagalur','',18),(1151,'Chikballapur','',18),(1152,'Chitradurga','',18),(1153,'Dakshina Kannada','',18),(1154,'Davanagere','',18),(1155,'Dharwad','',18),(1156,'Gadag','',18),(1157,'Gulbarga','',18),(1158,'Hampi','',18),(1159,'Hassan','',18),(1160,'Haveri','',18),(1161,'Hospet','',18),(1162,'Karwar','',18),(1163,'Kodagu','',18),(1164,'Kolar','',18),(1165,'Koppal','',18),(1166,'Madikeri','',18),(1167,'Mandya','',18),(1168,'Mangalore','',18),(1169,'Manipal','',18),(1170,'Mysore','',18),(1171,'Raichur','',18),(1172,'Shimoga','',18),(1173,'Sirsi','',18),(1174,'Sringeri','',18),(1175,'Srirangapatna','',18),(1176,'Tumkur','',18),(1177,'Udupi','',18),(1178,'Uttara Kannada','',18),(1179,'Agatti Island','',19),(1180,'Bingaram Island','',19),(1181,'Bitra Island','',19),(1182,'Chetlat Island','',19),(1183,'Kadmat Island','',19),(1184,'Kalpeni Island','',19),(1185,'Kavaratti Island','',19),(1186,'Kiltan Island','',19),(1187,'Lakshadweep Sea','',19),(1188,'Minicoy Island','',19),(1189,'North Island','',19),(1190,'South Island','',19),(1191,'East Garo Hills','',20),(1192,'East Khasi Hills','',20),(1193,'Jaintia Hills','',20),(1194,'Ri Bhoi','',20),(1195,'Shillong','',20),(1196,'South Garo Hills','',20),(1197,'West Garo Hills','',20),(1198,'West Khasi Hills','',20),(1199,'Ahmednagar','',21),(1200,'Akola','',21),(1201,'Amravati','',21),(1202,'Aurangabad','',21),(1203,'Beed','',21),(1204,'Bhandara','',21),(1205,'Buldhana','',21),(1206,'Chandrapur','',21),(1207,'Dhule','',21),(1208,'Gadchiroli','',21),(1209,'Gondia','',21),(1210,'Hingoli','',21),(1211,'Jalgaon','',21),(1212,'Jalna','',21),(1213,'Kolhapur','',21),(1214,'Latur','',21),(1215,'Mahabaleshwar','',21),(1216,'Mumbai','',21),(1217,'Mumbai City','',21),(1218,'Mumbai Suburban','',21),(1219,'Nagpur','',21),(1220,'Nanded','',21),(1221,'Nandurbar','',21),(1222,'Nashik','',21),(1223,'Osmanabad','',21),(1224,'Parbhani','',21),(1225,'Pune','',21),(1226,'Raigad','',21),(1227,'Ratnagiri','',21),(1228,'Sangli','',21),(1229,'Satara','',21),(1230,'Sholapur','',21),(1231,'Sindhudurg','',21),(1232,'Thane','',21),(1233,'Wardha','',21),(1234,'Washim','',21),(1235,'Yavatmal','',21),(1236,'Bishnupur','',22),(1237,'Chandel','',22),(1238,'Churachandpur','',22),(1239,'Imphal East','',22),(1240,'Imphal West','',22),(1241,'Senapati','',22),(1242,'Tamenglong','',22),(1243,'Thoubal','',22),(1244,'Ukhrul','',22),(1245,'Anuppur','',23),(1246,'Ashoknagar','',23),(1247,'Balaghat','',23),(1248,'Barwani','',23),(1249,'Betul','',23),(1250,'Bhind','',23),(1251,'Bhopal','',23),(1252,'Burhanpur','',23),(1253,'Chhatarpur','',23),(1254,'Chhindwara','',23),(1255,'Damoh','',23),(1256,'Datia','',23),(1257,'Dewas','',23),(1258,'Dhar','',23),(1259,'Dindori','',23),(1260,'Guna','',23),(1261,'Gwalior','',23),(1262,'Harda','',23),(1263,'Hoshangabad','',23),(1264,'Indore','',23),(1265,'Jabalpur','',23),(1266,'Jagdalpur','',23),(1267,'Jhabua','',23),(1268,'Katni','',23),(1269,'Khandwa','',23),(1270,'Khargone','',23),(1271,'Mandla','',23),(1272,'Mandsaur','',23),(1273,'Morena','',23),(1274,'Narsinghpur','',23),(1275,'Neemuch','',23),(1276,'Panna','',23),(1277,'Raisen','',23),(1278,'Rajgarh','',23),(1279,'Ratlam','',23),(1280,'Rewa','',23),(1281,'Sagar','',23),(1282,'Satna','',23),(1283,'Sehore','',23),(1284,'Seoni','',23),(1285,'Shahdol','',23),(1286,'Shajapur','',23),(1287,'Sheopur','',23),(1288,'Shivpuri','',23),(1289,'Sidhi','',23),(1290,'Tikamgarh','',23),(1291,'Ujjain','',23),(1292,'Umaria','',23),(1293,'Vidisha','',23),(1294,'Aizawl','',24),(1295,'Champhai','',24),(1296,'Kolasib','',24),(1297,'Lawngtlai','',24),(1298,'Lunglei','',24),(1299,'Mamit','',24),(1300,'Saiha','',24),(1301,'Serchhip','',24),(1302,'Dimapur','',25),(1303,'Kohima','',25),(1304,'Mokokchung','',25),(1305,'Mon','',25),(1306,'Phek','',25),(1307,'Tuensang','',25),(1308,'Wokha','',25),(1309,'Zunheboto','',25),(1310,'Angul','',26),(1311,'Balangir','',26),(1312,'Balasore','',26),(1313,'Baleswar','',26),(1314,'Bargarh','',26),(1315,'Berhampur','',26),(1316,'Bhadrak','',26),(1317,'Bhubaneswar','',26),(1318,'Boudh','',26),(1319,'Cuttack','',26),(1320,'Deogarh','',26),(1321,'Dhenkanal','',26),(1322,'Gajapati','',26),(1323,'Ganjam','',26),(1324,'Jagatsinghapur','',26),(1325,'Jajpur','',26),(1326,'Jharsuguda','',26),(1327,'Kalahandi','',26),(1328,'Kandhamal','',26),(1329,'Kendrapara','',26),(1330,'Kendujhar','',26),(1331,'Khordha','',26),(1332,'Koraput','',26),(1333,'Malkangiri','',26),(1334,'Mayurbhanj','',26),(1335,'Nabarangapur','',26),(1336,'Nayagarh','',26),(1337,'Nuapada','',26),(1338,'Puri','',26),(1339,'Rayagada','',26),(1340,'Rourkela','',26),(1341,'Sambalpur','',26),(1342,'Subarnapur','',26),(1343,'Sundergarh','',26),(1344,'Amritsar','',27),(1345,'Barnala','',27),(1346,'Bathinda','',27),(1347,'Faridkot','',27),(1348,'Fatehgarh Sahib','',27),(1349,'Ferozepur','',27),(1350,'Gurdaspur','',27),(1351,'Hoshiarpur','',27),(1352,'Jalandhar','',27),(1353,'Kapurthala','',27),(1354,'Ludhiana','',27),(1355,'Mansa','',27),(1356,'Moga','',27),(1357,'Muktsar','',27),(1358,'Nawanshahr','',27),(1359,'Pathankot','',27),(1360,'Patiala','',27),(1361,'Rupnagar','',27),(1362,'Sangrur','',27),(1363,'SAS Nagar','',27),(1364,'Tarn Taran','',27),(1365,'Bahur','',28),(1366,'Karaikal','',28),(1367,'Mahe','',28),(1368,'Pondicherry','',28),(1369,'Purnankuppam','',28),(1370,'Valudavur','',28),(1371,'Villianur','',28),(1372,'Yanam','',28),(1373,'Ajmer','',29),(1374,'Alwar','',29),(1375,'Banswara','',29),(1376,'Baran','',29),(1377,'Barmer','',29),(1378,'Bharatpur','',29),(1379,'Bhilwara','',29),(1380,'Bikaner','',29),(1381,'Bundi','',29),(1382,'Chittorgarh','',29),(1383,'Churu','',29),(1384,'Dausa','',29),(1385,'Dholpur','',29),(1386,'Dungarpur','',29),(1387,'Hanumangarh','',29),(1388,'Jaisalmer','',29),(1389,'Jalore','',29),(1390,'Jhalawar','',29),(1391,'Jhunjhunu','',29),(1392,'Jodhpur','',29),(1393,'Karauli','',29),(1394,'Kota','',29),(1395,'Nagaur','',29),(1396,'Pali','',29),(1397,'Pilani','',29),(1398,'Rajsamand','',29),(1399,'Sawai Madhopur','',29),(1400,'Sikar','',29),(1401,'Sirohi','',29),(1402,'Sri Ganganagar','',29),(1403,'Tonk','',29),(1404,'Udaipur','',29),(1405,'Barmiak','',30),(1406,'Be','',30),(1407,'Bhurtuk','',30),(1408,'Chhubakha','',30),(1409,'Chidam','',30),(1410,'Chubha','',30),(1411,'Chumikteng','',30),(1412,'Dentam','',30),(1413,'Dikchu','',30),(1414,'Dzongri','',30),(1415,'Gangtok','',30),(1416,'Gauzing','',30),(1417,'Gyalshing','',30),(1418,'Hema','',30),(1419,'Kerung','',30),(1420,'Lachen','',30),(1421,'Lachung','',30),(1422,'Lema','',30),(1423,'Lingtam','',30),(1424,'Lungthu','',30),(1425,'Mangan','',30),(1426,'Namchi','',30),(1427,'Namthang','',30),(1428,'Nanga','',30),(1429,'Nantang','',30),(1430,'Naya Bazar','',30),(1431,'Padamachen','',30),(1432,'Pakhyong','',30),(1433,'Pemayangtse','',30),(1434,'Phensang','',30),(1435,'Rangli','',30),(1436,'Rinchingpong','',30),(1437,'Sakyong','',30),(1438,'Samdong','',30),(1439,'Singtam','',30),(1440,'Siniolchu','',30),(1441,'Sombari','',30),(1442,'Soreng','',30),(1443,'Sosing','',30),(1444,'Tekhug','',30),(1445,'Temi','',30),(1446,'Tsetang','',30),(1447,'Tsomgo','',30),(1448,'Tumlong','',30),(1449,'Yangang','',30),(1450,'Yumtang','',30),(1451,'Chennai','',31),(1452,'Chidambaram','',31),(1453,'Chingleput','',31),(1454,'Coimbatore','',31),(1455,'Courtallam','',31),(1456,'Cuddalore','',31),(1457,'Dharmapuri','',31),(1458,'Dindigul','',31),(1459,'Erode','',31),(1460,'Hosur','',31),(1461,'Kanchipuram','',31),(1462,'Kanyakumari','',31),(1463,'Karaikudi','',31),(1464,'Karur','',31),(1465,'Kodaikanal','',31),(1466,'Kovilpatti','',31),(1467,'Krishnagiri','',31),(1468,'Kumbakonam','',31),(1469,'Madurai','',31),(1470,'Mayiladuthurai','',31),(1471,'Nagapattinam','',31),(1472,'Nagarcoil','',31),(1473,'Namakkal','',31),(1474,'Neyveli','',31),(1475,'Nilgiris','',31),(1476,'Ooty','',31),(1477,'Palani','',31),(1478,'Perambalur','',31),(1479,'Pollachi','',31),(1480,'Pudukkottai','',31),(1481,'Rajapalayam','',31),(1482,'Ramanathapuram','',31),(1483,'Salem','',31),(1484,'Sivaganga','',31),(1485,'Sivakasi','',31),(1486,'Thanjavur','',31),(1487,'Theni','',31),(1488,'Thoothukudi','',31),(1489,'Tiruchirappalli','',31),(1490,'Tirunelveli','',31),(1491,'Tirupur','',31),(1492,'Tiruvallur','',31),(1493,'Tiruvannamalai','',31),(1494,'Tiruvarur','',31),(1495,'Trichy','',31),(1496,'Tuticorin','',31),(1497,'Vellore','',31),(1498,'Villupuram','',31),(1499,'Virudhunagar','',31),(1500,'Yercaud','',31),(1501,'Agartala','',32),(1502,'Ambasa','',32),(1503,'Bampurbari','',32),(1504,'Belonia','',32),(1505,'Dhalai','',32),(1506,'Dharam Nagar','',32),(1507,'Kailashahar','',32),(1508,'Kamal Krishnabari','',32),(1509,'Khopaiyapara','',32),(1510,'Khowai','',32),(1511,'Phuldungsei','',32),(1512,'Radha Kishore Pur','',32),(1513,'Tripura','',32);

/*Table structure for table `complain_table` */

DROP TABLE IF EXISTS `complain_table`;

CREATE TABLE `complain_table` (
  `id` int(11) NOT NULL auto_increment,
  `complain_date` varchar(255) default NULL,
  `complain_description` varchar(255) default NULL,
  `complain_status` varchar(255) default NULL,
  `complain_subject` varchar(255) default NULL,
  `file_name` varchar(255) default NULL,
  `file_path` varchar(255) default NULL,
  `reply` varchar(255) default NULL,
  `replyDate` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `login_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK71b3vdsauu82fion5tcbcgwws` (`login_id`),
  CONSTRAINT `FK71b3vdsauu82fion5tcbcgwws` FOREIGN KEY (`login_id`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complain_table` */

insert  into `complain_table`(`id`,`complain_date`,`complain_description`,`complain_status`,`complain_subject`,`file_name`,`file_path`,`reply`,`replyDate`,`status`,`login_id`) values (1,'11/02/2020','it is not upto mark','Pending','accuracy',NULL,NULL,NULL,NULL,'',2);

/*Table structure for table `feedback_table` */

DROP TABLE IF EXISTS `feedback_table`;

CREATE TABLE `feedback_table` (
  `id` int(11) NOT NULL auto_increment,
  `feedback` varchar(255) default NULL,
  `rating` int(11) default NULL,
  `status` bit(1) default NULL,
  `login_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2e444apdm6ih3pfkgik75y5ff` (`login_id`),
  CONSTRAINT `FK2e444apdm6ih3pfkgik75y5ff` FOREIGN KEY (`login_id`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback_table` */

insert  into `feedback_table`(`id`,`feedback`,`rating`,`status`,`login_id`) values (1,'sfdfgfhj',0,'',3),(2,'Good Website',5,'',3);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (3);

/*Table structure for table `login_table` */

DROP TABLE IF EXISTS `login_table`;

CREATE TABLE `login_table` (
  `loginId` int(11) NOT NULL auto_increment,
  `enabled` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_table` */

insert  into `login_table`(`loginId`,`enabled`,`password`,`role`,`status`,`username`) values (1,'1','mall','ROLE_MALL','','mall@gmail.com'),(2,'1','branch','ROLE_BRANCH','','branch@gmail.com'),(3,'1','user','ROLE_USER','','user@gmail.com'),(4,'1','branch1','ROLE_BRANCH','','branch1@gmail.com'),(5,'1','branch2','ROLE_BRANCH','','branch2@gmail.com'),(6,'1','branch3','ROLE_BRANCH','','branch3@gmail.com'),(7,'1','ritushah','ROLE_USER','','ritushah825@gmail.com'),(8,'1','harshyadav','ROLE_USER','','7harshy@gmail.com'),(9,'1','rainamshah','ROLE_BRANCH','','rainams98@gmail.com');

/*Table structure for table `offer_table` */

DROP TABLE IF EXISTS `offer_table`;

CREATE TABLE `offer_table` (
  `id` int(11) NOT NULL auto_increment,
  `discount_percent` varchar(255) default NULL,
  `offer_name` varchar(255) default NULL,
  `offer_valid_from` varchar(255) default NULL,
  `offer_valid_till` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `categoryVO` int(11) default NULL,
  `productVO` int(11) default NULL,
  `subCategoryVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKknds2vfi44seqh9nqcbkavdag` (`categoryVO`),
  KEY `FKcrn53ybdgemv5wlcgb8i7d9e6` (`productVO`),
  KEY `FKn0lf8ceodyo1f7252gfo1der8` (`subCategoryVO`),
  CONSTRAINT `FKcrn53ybdgemv5wlcgb8i7d9e6` FOREIGN KEY (`productVO`) REFERENCES `product_table` (`id`),
  CONSTRAINT `FKknds2vfi44seqh9nqcbkavdag` FOREIGN KEY (`categoryVO`) REFERENCES `category_table` (`id`),
  CONSTRAINT `FKn0lf8ceodyo1f7252gfo1der8` FOREIGN KEY (`subCategoryVO`) REFERENCES `subcategory_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `offer_table` */

insert  into `offer_table`(`id`,`discount_percent`,`offer_name`,`offer_valid_from`,`offer_valid_till`,`status`,`categoryVO`,`productVO`,`subCategoryVO`) values (1,'10','paryshan sale','02/27/2020','02/29/2020','',1,NULL,NULL);

/*Table structure for table `order_table` */

DROP TABLE IF EXISTS `order_table`;

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL auto_increment,
  `purchase_date` varchar(255) default NULL,
  `total_amount` int(11) default NULL,
  `login_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8k5bknj77oyuuexggqumnsmu0` (`login_id`),
  CONSTRAINT `FK8k5bknj77oyuuexggqumnsmu0` FOREIGN KEY (`login_id`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_table` */

insert  into `order_table`(`id`,`purchase_date`,`total_amount`,`login_id`) values (1,'12/03/2020',20,3),(2,'12/03/2020',0,3),(3,'12/03/2020',30,3),(4,'12/03/2020',40,3),(5,'05/04/2020',100,3),(6,'05/04/2020',500,3),(7,'07/04/2020',609,3),(8,'07/04/2020',10,3),(9,'07/04/2020',299,3),(10,'07/04/2020',499,3),(11,'07/04/2020',898,3),(12,'07/04/2020',10,3),(13,'07/04/2020',20,3),(14,'07/04/2020',2500,3),(15,'07/04/2020',3300,3),(16,'07/04/2020',3300,7);

/*Table structure for table `product_count` */

DROP TABLE IF EXISTS `product_count`;

CREATE TABLE `product_count` (
  `id` int(11) NOT NULL auto_increment,
  `date` varchar(255) default NULL,
  `frequency` int(11) default NULL,
  `productvo` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK7r2r0ae7hfbq0rnh5ajmga8iu` (`productvo`),
  CONSTRAINT `FK7r2r0ae7hfbq0rnh5ajmga8iu` FOREIGN KEY (`productvo`) REFERENCES `product_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_count` */

insert  into `product_count`(`id`,`date`,`frequency`,`productvo`) values (1,'07/04/2020',2,22),(3,'07/04/2020',2,4),(5,'07/04/2020',3,47),(6,'07/04/2020',2,48),(7,'06/04/2020',10,24),(9,'24/09/2020',11,16),(10,'08/09/2020',5,51),(11,'28/01/2020',10,33),(12,'12/09/2020',23,42),(13,'16/09/2020',18,22),(14,'10/12/2020',6,20),(15,'27/06/2020',26,52),(16,'23/02/2020',25,12),(17,'11/09/2020',12,43),(18,'09/12/2020',12,34),(19,'01/04/2020',11,10),(20,'14/01/2020',10,29),(21,'24/08/2020',11,40),(22,'03/02/2020',13,51),(23,'13/03/2020',11,48),(24,'22/08/2020',19,39),(25,'13/01/2020',20,44),(26,'04/06/2020',23,13),(27,'09/09/2020',10,8),(28,'03/06/2020',7,33),(29,'12/03/2020',21,30),(30,'04/07/2020',13,12),(31,'16/05/2020',22,22),(32,'06/09/2020',6,34),(33,'21/11/2020',7,38),(34,'01/05/2020',27,5),(35,'27/09/2020',13,32),(36,'28/03/2020',25,9),(37,'12/01/2020',9,48),(38,'02/09/2020',25,42),(39,'20/11/2020',21,35),(40,'24/04/2020',20,19),(41,'26/07/2020',4,32),(42,'09/12/2020',25,15),(43,'21/11/2020',24,4),(44,'12/06/2020',18,34),(45,'12/07/2020',18,46),(46,'21/01/2020',6,32),(47,'08/06/2020',10,36),(48,'19/11/2020',17,23),(49,'22/12/2020',23,26),(50,'03/06/2020',17,22),(51,'02/03/2020',14,52),(52,'07/10/2020',12,38),(53,'16/12/2020',9,48),(54,'20/07/2020',20,41),(55,'22/09/2020',8,44),(56,'28/04/2020',21,36),(57,'03/10/2020',20,34),(58,'08/12/2020',26,52),(59,'18/06/2020',3,50),(60,'11/06/2020',8,7),(61,'12/08/2020',3,49),(62,'08/06/2020',26,9),(63,'13/12/2020',19,35),(64,'15/09/2020',22,32),(65,'07/06/2020',6,17),(66,'04/07/2020',18,5),(67,'05/11/2020',27,25),(68,'25/07/2020',7,6),(69,'13/04/2020',17,12),(70,'04/04/2020',11,15),(71,'09/04/2020',3,45),(72,'23/04/2020',20,21),(73,'09/07/2020',22,14),(74,'14/01/2020',21,12),(75,'14/11/2020',10,27),(76,'08/06/2020',11,13),(77,'13/12/2020',13,13),(78,'21/04/2020',27,44),(79,'26/12/2020',15,35),(80,'04/10/2020',26,9),(81,'25/05/2020',21,12),(82,'06/03/2020',13,18),(83,'19/04/2020',5,25),(84,'01/09/2020',16,45),(85,'05/06/2020',5,2),(86,'06/01/2020',8,38),(87,'12/05/2020',17,47),(88,'07/07/2020',26,49),(89,'14/05/2020',26,4),(90,'25/01/2020',9,30),(91,'23/01/2020',21,30),(92,'03/05/2020',19,7),(93,'25/12/2020',7,27),(94,'16/09/2020',25,17),(95,'03/02/2020',19,41),(96,'20/03/2020',5,52),(97,'14/06/2020',10,45),(98,'23/07/2020',7,12),(99,'18/12/2020',13,12),(100,'12/02/2020',19,9),(101,'14/10/2020',13,35),(102,'11/02/2020',12,3),(103,'07/04/2020',17,8),(104,'26/10/2020',20,29),(105,'16/01/2020',9,40),(106,'27/01/2020',25,16),(107,'08/01/2020',25,20),(108,'12/12/2020',25,35),(109,'18/07/2020',5,45),(110,'17/01/2020',10,12),(111,'16/10/2020',6,10),(112,'26/12/2020',14,52),(113,'12/09/2020',10,13),(114,'26/06/2020',18,16),(115,'01/04/2020',3,28),(116,'04/07/2020',16,21),(117,'11/11/2020',25,16),(118,'25/06/2020',20,2),(119,'10/08/2020',11,42),(120,'15/09/2020',18,45),(121,'06/07/2020',20,4),(122,'15/04/2020',23,22),(123,'17/10/2020',17,11),(124,'16/06/2020',20,26),(125,'07/11/2020',18,45),(126,'01/05/2020',12,18),(127,'25/11/2020',10,17),(128,'18/09/2020',21,8),(129,'06/06/2020',12,11),(130,'11/09/2020',23,26),(131,'24/11/2020',27,8),(132,'11/07/2020',14,43),(133,'19/02/2020',9,26),(134,'05/06/2020',14,5),(135,'21/02/2020',23,42),(136,'06/03/2020',25,12),(137,'20/02/2020',8,30),(138,'17/03/2020',6,5),(139,'06/02/2020',12,42),(140,'13/04/2020',25,18),(141,'04/09/2020',15,44),(142,'26/09/2020',22,10),(143,'14/01/2020',16,24),(144,'24/01/2020',7,45),(145,'24/04/2020',6,24),(146,'14/08/2020',26,52),(147,'08/03/2020',21,7),(148,'07/11/2020',16,4),(149,'25/07/2020',27,36),(150,'24/06/2020',17,18),(151,'24/05/2020',27,21),(152,'27/01/2020',9,19),(153,'02/11/2020',7,52),(154,'13/05/2020',24,10),(155,'20/02/2020',9,48),(156,'05/06/2020',10,18),(157,'09/08/2020',6,18),(158,'22/09/2020',6,19),(159,'03/01/2020',15,31),(160,'16/04/2020',27,49),(161,'18/08/2020',14,15),(162,'15/03/2020',9,47),(163,'27/01/2020',10,23),(164,'22/10/2020',27,16),(165,'26/05/2020',8,5),(166,'05/05/2020',9,28),(167,'28/02/2020',25,7),(168,'22/11/2020',7,31),(169,'16/06/2020',15,48),(170,'12/12/2020',20,47),(171,'25/05/2020',12,51),(172,'27/12/2020',8,38),(173,'10/05/2020',15,52),(174,'20/04/2020',19,20),(175,'17/11/2020',21,14),(176,'26/04/2020',7,32),(177,'28/05/2020',26,20),(178,'14/09/2020',22,43),(179,'27/12/2020',22,38),(180,'11/10/2020',9,7),(181,'03/04/2020',13,41),(182,'08/12/2020',6,2),(183,'27/01/2020',6,12),(184,'16/04/2020',12,45),(185,'15/06/2020',7,8),(186,'24/01/2020',16,27),(187,'11/09/2020',3,14),(188,'18/05/2020',9,13),(189,'24/11/2020',13,49),(190,'08/03/2020',10,17),(191,'26/11/2020',26,36),(192,'27/03/2020',16,35),(193,'07/08/2020',15,38),(194,'16/02/2020',24,13),(195,'22/01/2020',27,4),(196,'26/12/2020',20,29),(197,'12/06/2020',18,28),(198,'25/03/2020',27,43),(199,'19/01/2020',16,40),(200,'15/08/2020',10,51),(201,'09/07/2020',7,5),(202,'14/07/2020',9,11),(203,'25/11/2020',7,19),(204,'04/09/2020',18,10),(205,'05/04/2020',4,44),(206,'18/05/2020',13,20),(207,'24/08/2020',23,48),(208,'17/05/2020',5,45),(209,'11/09/2020',14,51),(210,'21/05/2020',11,50),(211,'05/11/2020',13,20),(212,'20/05/2020',18,25),(213,'07/01/2020',24,24),(214,'04/05/2020',13,7),(215,'25/12/2020',13,43),(216,'10/02/2020',25,16),(217,'24/12/2020',3,42),(218,'20/10/2020',18,14),(219,'26/10/2020',7,34),(220,'12/01/2020',26,23),(221,'02/10/2020',15,4),(222,'08/07/2020',10,34),(223,'22/05/2020',4,23),(224,'20/08/2020',5,4),(225,'15/03/2020',25,24),(226,'13/10/2020',4,24),(227,'01/01/2020',10,41),(228,'02/06/2020',15,13),(229,'06/04/2020',26,40),(230,'22/02/2020',3,46),(231,'09/07/2020',7,22),(232,'26/12/2020',23,20),(233,'16/05/2020',12,22),(234,'02/05/2020',10,11),(235,'28/04/2020',27,43),(236,'09/03/2020',13,21),(237,'05/10/2020',18,6),(238,'03/07/2020',15,3),(239,'05/12/2020',5,48),(240,'28/07/2020',3,51),(241,'12/01/2020',20,41),(242,'23/08/2020',21,6),(243,'26/03/2020',25,35),(244,'14/05/2020',19,48),(245,'13/02/2020',24,44),(246,'18/02/2020',21,13),(247,'06/10/2020',9,45),(248,'13/04/2020',5,23),(249,'09/09/2020',4,32),(250,'10/11/2020',9,22),(251,'07/02/2020',25,44),(252,'25/03/2020',5,39),(253,'17/07/2020',20,3),(254,'12/02/2020',11,33),(255,'12/03/2020',3,13),(256,'18/04/2020',12,23),(257,'09/08/2020',23,38),(258,'25/09/2020',24,6),(259,'15/09/2020',13,19),(260,'05/05/2020',5,36),(261,'17/09/2020',6,44),(262,'05/03/2020',14,27),(263,'27/10/2020',26,47),(264,'27/11/2020',18,13),(265,'06/06/2020',11,44),(266,'24/11/2020',12,9),(267,'15/05/2020',10,46),(268,'27/09/2020',6,31),(269,'10/12/2020',18,49),(270,'13/10/2020',21,20),(271,'20/07/2020',15,26),(272,'27/12/2020',19,25),(273,'10/11/2020',6,15),(274,'05/04/2020',17,39),(275,'25/04/2020',20,6),(276,'14/01/2020',20,13),(277,'10/08/2020',14,25),(278,'23/11/2020',9,18),(279,'05/05/2020',18,47),(280,'27/11/2020',8,4),(281,'08/11/2020',16,41),(282,'06/05/2020',21,40),(283,'27/03/2020',10,41),(284,'04/01/2020',21,51),(285,'07/09/2020',9,29),(286,'28/05/2020',21,3),(287,'12/02/2020',14,21),(288,'15/05/2020',18,2),(289,'04/02/2020',17,7),(290,'19/06/2020',25,50),(291,'20/11/2020',14,28),(292,'23/10/2020',5,3),(293,'16/10/2020',12,39),(294,'03/04/2020',26,50),(295,'08/09/2020',10,13),(296,'10/06/2020',4,43),(297,'03/08/2020',20,37),(298,'14/09/2020',14,31),(299,'24/06/2020',22,18),(300,'15/03/2020',16,45),(301,'21/09/2020',5,4),(302,'17/09/2020',8,12),(303,'13/06/2020',3,50),(304,'05/05/2020',18,37),(305,'23/01/2020',25,46),(306,'21/01/2020',15,39),(307,'19/05/2020',12,39),(308,'01/05/2020',20,5),(309,'10/05/2020',21,30),(310,'10/08/2020',12,12),(311,'23/09/2020',26,39),(312,'19/03/2020',16,6),(313,'26/09/2020',3,23),(314,'04/08/2020',9,34),(315,'01/01/2020',7,14),(316,'09/11/2020',21,10),(317,'23/11/2020',25,24),(318,'13/04/2020',19,39),(319,'11/10/2020',18,42),(320,'02/11/2020',10,18),(321,'27/04/2020',13,37),(322,'20/10/2020',3,49),(323,'07/04/2020',9,52),(324,'27/02/2020',26,34),(325,'08/01/2020',10,51),(326,'12/06/2020',20,5),(327,'19/05/2020',9,21),(328,'03/06/2020',25,29),(329,'18/06/2020',18,47),(330,'17/04/2020',10,12),(331,'15/04/2020',13,30),(332,'06/02/2020',21,24),(333,'14/08/2020',19,46),(334,'08/05/2020',18,48),(335,'21/10/2020',25,28),(336,'05/07/2020',18,24),(337,'03/03/2020',19,43),(338,'15/02/2020',4,22),(339,'27/03/2020',5,5),(340,'27/02/2020',5,46),(341,'08/08/2020',22,41),(342,'12/02/2020',22,46),(343,'20/01/2020',22,51),(344,'10/07/2020',5,10),(345,'14/03/2020',27,15),(346,'05/11/2020',21,48),(347,'18/03/2020',25,21),(348,'01/11/2020',5,38),(349,'21/09/2020',3,24),(350,'06/01/2020',8,36),(351,'16/02/2020',25,16),(352,'27/01/2020',16,29),(353,'12/06/2020',23,22),(354,'08/11/2020',11,6),(355,'20/06/2020',8,10),(356,'02/08/2020',20,22),(357,'20/03/2020',26,3),(358,'22/04/2020',19,32),(359,'13/01/2020',7,25),(360,'20/02/2020',5,24),(361,'27/08/2020',22,48),(362,'16/08/2020',5,24),(363,'14/02/2020',6,5),(364,'19/01/2020',3,20),(365,'18/06/2020',6,14),(366,'14/02/2020',10,6),(367,'04/10/2020',3,28),(368,'16/02/2020',16,26),(369,'21/02/2020',27,40),(370,'24/11/2020',15,47),(371,'22/05/2020',22,5),(372,'03/07/2020',25,27),(373,'24/11/2020',14,7),(374,'20/05/2020',20,47),(375,'15/01/2020',20,27),(376,'15/03/2020',27,47),(377,'17/10/2020',27,34),(378,'05/10/2020',21,22),(379,'06/09/2020',5,36),(380,'20/06/2020',15,12),(381,'03/12/2020',13,42),(382,'24/09/2020',12,36),(383,'24/06/2020',3,36),(384,'07/04/2020',20,43),(385,'27/05/2020',11,5),(386,'14/05/2020',24,25),(387,'16/05/2020',13,14),(388,'15/05/2020',13,31),(389,'13/06/2020',21,44),(390,'24/07/2020',12,29),(391,'22/09/2020',5,6),(392,'22/11/2020',10,51),(393,'19/04/2020',5,51),(394,'12/03/2020',15,17),(395,'18/09/2020',16,25),(396,'11/09/2020',27,37),(397,'24/10/2020',7,2),(398,'10/03/2020',18,19),(399,'09/03/2020',6,9),(400,'13/08/2020',15,52),(401,'22/01/2020',19,40),(402,'15/05/2020',8,50),(403,'03/04/2020',20,13),(404,'25/05/2020',26,5),(405,'03/10/2020',6,11),(406,'14/12/2020',7,11),(407,'13/06/2020',5,12),(408,'27/05/2020',22,41);

/*Table structure for table `product_table` */

DROP TABLE IF EXISTS `product_table`;

CREATE TABLE `product_table` (
  `id` int(11) NOT NULL auto_increment,
  `product_description` varchar(255) default NULL,
  `product_name` varchar(255) default NULL,
  `product_price` varchar(255) default NULL,
  `product_weight` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `branchVO` int(11) default NULL,
  `categoryVO` int(11) default NULL,
  `subCategoryVO` int(11) default NULL,
  `product_quantity` varchar(255) default NULL,
  `product_file_name` varchar(255) default NULL,
  `product_file_path` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKb80k7dw0gmouj1o0nu1bsl73n` (`branchVO`),
  KEY `FKg3rtm27uqn6ias97ts0x8lkjn` (`categoryVO`),
  KEY `FK51air943fmlbicv5f36r8janf` (`subCategoryVO`),
  CONSTRAINT `FK51air943fmlbicv5f36r8janf` FOREIGN KEY (`subCategoryVO`) REFERENCES `subcategory_table` (`id`),
  CONSTRAINT `FKb80k7dw0gmouj1o0nu1bsl73n` FOREIGN KEY (`branchVO`) REFERENCES `branch_table` (`id`),
  CONSTRAINT `FKg3rtm27uqn6ias97ts0x8lkjn` FOREIGN KEY (`categoryVO`) REFERENCES `category_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_table` */

insert  into `product_table`(`id`,`product_description`,`product_name`,`product_price`,`product_weight`,`status`,`branchVO`,`categoryVO`,`subCategoryVO`,`product_quantity`,`product_file_name`,`product_file_path`) values (2,'It is a biscuit which contains a high amount of glucose.','Parle-G','10.0','100gms','',1,1,1,'7','\\Parle-G.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(3,'This biscuits are crunchy and salty.','Monaco','20.0','100gms','',1,1,1,'10','\\Monaco.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(4,'This biscuits re sweet in taste.','Krack-Jack','10.0','100gms','',1,1,1,'8','\\Krack-Jack.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(5,'Bournvita is a malted chocolate drink mix that can be enjoyed piping hot or deliciously cold. Try blending bournvita with milk and ice cream to make a chocolate milkshake that is delectable and nutritious.','Bournvita','500.0','1 kg','',1,1,2,'48','\\Bournvita.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(6,'A range of tasty drinks and products full of extra nourishment to supplement your diet.','Complain','300.0','1 kg','',1,1,2,'10','\\Complain.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(7,'Horlicks is a sweet malted milk hot drink powder .','Horlicks','450.0','1 kg','',1,1,2,'50','\\Horlicks.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(8,'The mung bean, alternatively known as the green gram or moong is a plant species in the legume family.','Green-Gram','20.0','1 kg','',1,1,3,'10','\\Green-Gram.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(9,'Red kidney beans are rich in protein and nutrients. They fill you up. When dried, they can be stored for one year. ','Red Kidney Beans','30.0','1 kg','',1,1,3,'10','\\Red Kidney Beans.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(10,'As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.','Rice','50.0','1 kg','',1,1,3,'10','\\Rice.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(11,'As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia.','Wheat','75.0','1 kg','',1,1,3,'10','\\Wheat.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(12,'Cabbage is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads.','Cabbage','20.0','1 kg','',1,1,4,'10','\\Cabbage.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(13,'Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae. It is an annual plant that reproduces by seed.','Cauliflower','25.0','1 kg','',1,1,4,'10','\\Cauliflower.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(14,'The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. ','Tomato','15.0','1 kg','',1,1,4,'10','\\Tomato.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(15,'Grapes can be eaten fresh as table grapes or they can be used for making wine, jam, grape juice, jelly, grape seed extract, raisins, vinegar, and grape seed oil.','Grapes','50.0','1 kg','',1,1,5,'10','\\Grapes.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(16,'Papaya is rich in fibre, Vitamin C and antioxidants which prevent cholesterol build up in your arteries. ','Papaya','20.0','1 kg','',1,1,5,'10','\\Papaya.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(17,'Pomegranate is a widely used plant having medicinal properties. ','Pomegranate','30.0','1 kg','',1,1,5,'10','\\Pomegranate.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(18,'Round neck t-shirt','Levis-tshirt','329.0','200gms','',1,2,6,'10','\\Levis-tshirt.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(19,'Collar t-shirt','U.S.Polo','599.0','250gms','',1,2,6,'9','\\U.S.Polo.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(20,'Sports t-shirt','Adidas','699.0','200gms','',1,2,6,'10','\\Adidas.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(21,'Round neck t-shirt','Bewakoof t-shirt','399.0','200gms','',1,2,7,'9','\\Bewakoof t-shirt.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(22,'Full sleevs t-shirt','Wrangler','499.0','250gms','',1,2,7,'8','\\Wrangler.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(23,'half sleeve tshirt','Babyhug','299.0','100gms','',1,2,8,'9','\\Babyhug.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(24,'They are very light to wear.','silver bangles','60.0','300gms','',1,3,9,'10','\\silver bangles.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(25,'It can go with any clothes.','Three piece necklace','100.0','50gms','',1,3,10,'8','\\Three piece necklace.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(26,'It can go with traditional as well as  western outfit.','Silver earrings','70.0','100gms','',1,3,11,'10','\\Silver earrings.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(27,'Apple product.','iPhone 11','35000.0','600gms','',1,4,12,'10','\\iPhone 11.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(28,'It is very useful for students.','HP laptop','50000.0','1.5kg','',1,4,13,'10','\\HP laptop.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(29,'It is very affordable and light weight.','Samsung Mobile','15990.0','300gms','',1,4,12,'10','\\Samsung Mobile.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(30,'It is very usefulfor professional purpose','Dell Laptops','36000.0','1.5kg','',1,4,13,'10','\\Dell Laptops.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(31,'It chops properly.','Philips','3000.0','1 kg','',1,5,14,'10','\\Philips.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(32,'Maharaja Whiteline Mixer Grinder is a must-have for every homemaker. Our best mixer grinder gives you reliable performance and confidence to do multiple things.','Maharaja','3500.0','500gms','',1,5,14,'10','\\Maharaja.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(33,'Gala Spin mop with easy wheels and bucket for magic 360 degree cleaning (with 2 refills).','Gala','999.0','1.5kg','',1,5,15,'10','\\Gala.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(34,'It is used to soak up liquid, for cleaning floors and other surfaces, to mop up dust, or for other cleaning purposes.','Milton','1199.0','1 kg','',1,5,15,'10','\\Milton.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(35,'Prestige Induction Cooktop PIC 26.0 is one more addition to its range in the 1200 W segment which brings with it; Power saver technology, that cooks smart with optimum use of power. ','Prestige','1499.0','1.5kg','',1,5,16,'10','\\Prestige.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(36,'The Pigeon induction cooktop is extremely durable and specially designed to withstand the weights of heavy utensils on its induction surface.','Pigeon','1199.0','1 kg','',1,5,16,'10','\\Pigeon.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(37,'Prestige omega deluxe cookware range has 3 layer non-stick coating which allows cooking food without sticking to the cookware and metal spoon friendly, thus making the cookware long lasting.','Prestige','1750.0','2 Kg','',1,5,17,'10','\\Prestige.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(38,'Nirlon nonstick cookware set provides an array of user-friendly features. Its innovative Nirlon Thermo-Spot heat indicator makes it easy to properly pre-heat pans, which helps seal in the flavor of food, whether sauteing or searing.','Nirlon','1599.0','1.75 Kg','',1,5,17,'10','\\Nirlon.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(39,'The electric shaver is a device with a rotating or oscillating blade. The electric shaver usually does not require the use of shaving cream, soap, or water.','Philips Aqua Touch','2689.0','300gms','',1,6,18,'10','\\Philips Aqua Touch.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(40,'Find multi-blade shavers, professional trimmers, hair clippers, beard trimmers.','Panasonic','1200.0','500gms','',1,6,18,'10','\\Panasonic.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(41,' It was a high-sudsing powder designed for twin-tub and top-loading washing machines.','Airel','100.0','1 kg','',1,6,19,'10 ','\\Airel.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(42,'Tide has you covered with options, such as the new and improved Tide High Efficiency Powder Laundry Detergent, which offers increased stain fighting power packed into a smaller box, allowing you to use less than you would other detergents.','Tide','120.0','1 kg','',1,6,19,'10 ','\\Tide.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(43,'The OMRON HEM-7120 is a compact, fully automatic blood pressure monitor, operating on the Oscillometric principle for precise measurements and accurate results.','Omron','2500.0','250gms','',1,6,20,'10','\\Omron.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(44,'K-Life BPM-102 is a digital blood pressure monitor (premium model) ergonomically designed to find out the blood pressure of the user in minutes and with utmost ease of usage with a big LCD backlit colour changing display.','K Life','1200.0','300gms','',1,6,20,'10','\\K Life.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(45,'Every bike in the range has been carefully crafted and built using the best components and technology.','BWM Cycle','20000.0','2.5 Kg','',1,7,21,'10','\\BWM Cycle.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(46,'Hercules MTB is designed for kids who are adventurous and like to explore their neighbourhood. Rugged and reliable, our range of Roadsters are truly a cut above the rest when it comes to strength and durability.','Hercules','15500.0','1.5 Kg','',1,7,21,'10','\\Hercules.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(47,'Yonex badminton rackets are known for being lightweight.','Yonex Racket','2500.0','100gms','',1,7,22,'7','\\Yonex Racket.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(48,'A shuttlecock (also called a bird or birdie) is a high-drag projectile used in the sport of badminton. It has an open conical shape formed by feathers (or a synthetic alternative) embedded into a rounded cork (or rubber) base.','Shuttle','800.0','20 gms','',1,7,22,'8','\\Shuttle.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(49,'A machine with a moving strip on which one walks without moving forward. A treadmill was originally a wide wheel turned by the weight of people climbing on steps around its edge.','Trademill','26000.0','5 Kg','',1,7,23,'5','\\Trademill.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(50,'Lakme compact powder for oily skin mattifies the skin and keeps it oil-free for long.','Compact Powder','799.0','50 gms','',1,8,24,'10','\\Compact Powder.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(51,'Loreal Shampoo acts as a savior and tackles such unavoidable problems, giving you cleansed, healthy and shiny hair with every wash.','Loreal shampoo','550.0','750 gms','',1,8,25,'10','\\Loreal shampoo.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product'),(52,'Sunscreen, also known as sunblock, is a lotion, spray, gel, foam stick or other topical product that absorbs or reflects some of the sun\'s ultraviolet (UV) radiation.','Sunscreen cream','899.0','500gms','',1,8,26,'10','\\Sunscreen cream.jpg','D:\\Imp\\projectworkspace\\SWAAP\\src\\main\\webapp\\product');

/*Table structure for table `register_table` */

DROP TABLE IF EXISTS `register_table`;

CREATE TABLE `register_table` (
  `registerId` int(11) NOT NULL,
  `gender` varchar(255) default NULL,
  `mobileNumber` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `loginVO_loginId` int(11) default NULL,
  PRIMARY KEY  (`registerId`),
  KEY `FKihdhpd1eme5wqxdikl3m7p9t0` (`loginVO_loginId`),
  CONSTRAINT `FKihdhpd1eme5wqxdikl3m7p9t0` FOREIGN KEY (`loginVO_loginId`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register_table` */

insert  into `register_table`(`registerId`,`gender`,`mobileNumber`,`name`,`loginVO_loginId`) values (1,'Female','9898989898','Ritu',7),(2,'Male','8585858585','Harsh',8);

/*Table structure for table `state_table` */

DROP TABLE IF EXISTS `state_table`;

CREATE TABLE `state_table` (
  `id` int(11) NOT NULL auto_increment,
  `state_name` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `state_table` */

insert  into `state_table`(`id`,`state_name`,`status`) values (1,'ANDAMAN AND NICOBAR ISLANDS',''),(2,'ANDHRA PRADESH',''),(3,'ARUNACHAL PRADESH',''),(4,'ASSAM',''),(5,'BIHAR',''),(6,'CHATTISGARH',''),(7,'CHANDIGARH',''),(8,'DAMAN AND DIU',''),(9,'DELHI',''),(10,'DADRA AND NAGAR HAVELI',''),(11,'GOA',''),(12,'GUJARAT',''),(13,'HIMACHAL PRADESH',''),(14,'HARYANA',''),(15,'JAMMU AND KASHMIR',''),(16,'JHARKHAND',''),(17,'KERALA',''),(18,'KARNATAKA',''),(19,'LAKSHADWEEP',''),(20,'MEGHALAYA',''),(21,'MAHARASHTRA',''),(22,'MANIPUR',''),(23,'MADHYA PRADESH',''),(24,'MIZORAM',''),(25,'NAGALAND',''),(26,'ORISSA',''),(27,'PUNJAB',''),(28,'PONDICHERRY',''),(29,'RAJASTHAN',''),(30,'SIKKIM',''),(31,'TAMIL NADU',''),(32,'TRIPURA',''),(33,'UTTARAKHAND',''),(34,'UTTAR PRADESH',''),(35,'WEST BENGAL',''),(36,'TELANGANA','');

/*Table structure for table `subcategory_table` */

DROP TABLE IF EXISTS `subcategory_table`;

CREATE TABLE `subcategory_table` (
  `id` int(11) NOT NULL auto_increment,
  `status` bit(1) default NULL,
  `subCategory_name` varchar(255) default NULL,
  `categoryVO` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKye1hn8g8gce79hngn8gukdid` (`categoryVO`),
  CONSTRAINT `FKye1hn8g8gce79hngn8gukdid` FOREIGN KEY (`categoryVO`) REFERENCES `category_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subcategory_table` */

insert  into `subcategory_table`(`id`,`status`,`subCategory_name`,`categoryVO`) values (1,'','Biscuits',1),(2,'','Health Drink',1),(3,'','Cereals and Pulses',1),(4,'','Vegetables',1),(5,'','Fruits',1),(6,'','Men t-shirts',2),(7,'','Women t-shirts',2),(8,'','Baby t-shirts',2),(9,'','Bangles',3),(10,'','Necklace',3),(11,'','Earrings',3),(12,'','Mobiles',4),(13,'','Laptops',4),(14,'','Mixer',5),(15,'','Mop',5),(16,'','Induction Stove',5),(17,'','Non-stick cooker set',5),(18,'','Shaver',6),(19,'','Washing Powders',6),(20,'','BP Monitors',6),(21,'','Cycling',7),(22,'','Badminton',7),(23,'','Gym',7),(24,'','Make-up and Nails',8),(25,'','Hair care',8),(26,'','Skin Care',8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
