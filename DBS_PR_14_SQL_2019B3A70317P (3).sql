-- creation of database named railway12
create database railway12;
-- for using database named railway12
use railway12;
-- drop database railway12;


-- creation of table named train_details having column entries (attribute) Train_No, Train_Name, source_time, destination_time
create table train_details(
    Train_No varchar(10) NOT NULL primary key,
    Train_Name varchar(50) NOT NULL,
    source_time time Not Null,
    destination_time time not null);

-- creation of table named Station_info having column entries (attribute) Station_Name, Station_Code
create table Station_info
(
    Station_Name varchar(50) NOT NULL , 
    Station_Code varchar(10) NOT NULL primary key);
    
-- creation of table named train_route having column entries (attribute) Train_No, Station_No, Arrival_time, Departure_Time, Distance     
create table train_route
(
    Train_No varchar(10) NOT NULL references train_details , 
    Station_No int NOT NULL, 
    Station_Code varchar(10) NOT NULL,
    Arrival_Time time NOT NULL, 
    Departure_Time time NOT NULL, 
    Distance int NOT NULL,
    primary key (train_no,station_no),
    foreign key (train_no) references train_details(train_no)
    );

create table train_no_visited(
    Train_No1 varchar(10),
    Train_No2 varchar(10),
    foreign key (train_no1) references train_details(train_no));

-- temporary table for storing Exp_Arrival_Time, Exp_Departure_Time
create table exp_sch
(
    Train_No varchar(10) ,
    Station_No int,
    Station_Code varchar(10)
    ,Exp_Arrival_Time time
    ,Exp_Departure_Time time,
    primary key(Train_No),
    foreign key (train_no) references train_details(train_no)
    );

    create table status
    (
    Status_code int,
    message varchar(100)
    );

-- populating of table named Train_details
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12003','LJN NDLS SWARAN SHATABDI','15:35:00','22:02:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12004','NDLS LJN SWARAN SHATABDI','06:01:00','12:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12005','KALKA SHATABDI EXPRESS','17:15:00','21:15:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12006','KALKA SHATABDI EXPRESS','06:15:00','10:15:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12009','MMCT SHATABDI EXPRESS','06:01:00','13:25:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12010','MMCT SHATABDI EXPRESS','14:05:00','21:45:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12011','KLK SHATABDI EXPRESS','07:04:00','11:04:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12012','KLK SHATABDI EXPRESS','17:45:00','21:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12013','ASR SHATABDI EXPRESS','16:03:00','22:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12014','ASR SHATABDI EXPRESS','04:55:00','11:02:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12015','AII NDLS SHATABDI EXPRESS','06:01:00','12:55:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12016','AII NDLS SHATABDI EXPRESS','15:45:00','22:04:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12017','DDN SHATABDI EXPRESS','06:45:00','12:55:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12018','DDN SHATABDI EXPRESS','17:00:00','22:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12019','SHATABDI EXPRESS','06:05:00','13:15:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12020','SHATABDI EXPRESS','13:45:00','21:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12023','JANSHATABDI EXP  ','14:05:00','22:02:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12024','JANSHATABDI EXP  ','05:03:00','13:25:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12027','SHATABDI EXPRESS','17:03:00','22:25:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12028','SHATABDI EXPRESS','06:00:00','11:00:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12029','ASR SHATABDI EXPRESS','07:02:00','13:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12030','ASR SHATABDI EXPRESS','16:05:00','22:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12031','ASR SHATBDI EXP ','07:02:00','13:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12032','ASR SHATABDI EXPRESS','16:05:00','22:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12033','SHATABDI EXPRESS','06:00:00','11:02:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12034','SHATABDI EXPRESS','15:05:00','20:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12039','KGM NDLS SHATABDI EXPRESS','15:01:00','20:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12040','NDLS KGM SHATABDI EXPRESS','06:02:00','11:55:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12041','SHATABDI EXPRESS','14:15:00','22:35:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12042','SHATABDI EXPRESS','05:03:00','13:35:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12045','NDLS CDG SHATABDI EXPRESS','19:15:00','22:35:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12046','CDG NDLS SHATABDI EXPRESS','12:15:00','15:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12049','GATIMAAN EXP  ','15:05:00','19:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12050','GATIMAAN EXP  ','08:01:00','12:35:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12051','MAO JANSHATABDI EXPRESS','05:01:00','14:01:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12052','MAO JANSHATABDI EXPRESS','14:04:00','23:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12053','HW ASR JAN SHATABDI EXPRESS','14:45:00','22:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12054','ASR HW JAN SHATABDI EXPRESS','06:05:00','13:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12055','NDLS JANSHTABDI','15:02:00','21:01:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12056','NDLS JANSHTABDI ','05:00:00','11:05:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12061','RKMP JANSHATABDI EXPRESS','17:04:00','22:55:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12062','RKMP SHATABDI EXPRESS','05:03:00','11:00:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12065','DEE JAN SHATABDI EXPRESS','05:04:00','11:35:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12066','AII JAN SHATABDI EXPRESS','16:15:00','22:15:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12069','JANSHATABDI EXPRESS','06:01:00','13:03:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12070','JANSHATABDI EXPRESS','14:55:00','22:00:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12071','JANSHATABDI EXPRESS','12:01:00','19:45:00');
INSERT INTO Train_details (`Train_No`,`Train_Name`,`source_time`,`destination_time`) VALUES ('12072','JANSHATABDI EXPRESS','08:03:00','16:02:00');



-- populating of table named Train_route
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ADI','Ahmedabad Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('AGC','Agra Cantt (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('AII','Ajmer Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('AKT','Akaltara');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ALJN','Aligarh Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ANND','Anand Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ASN','Asansol Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ASR','Amritsar Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('AWB','Aurangabad');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BARH','Barh');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BEAS','Beas Junction');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BH','Bharuch Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BKI','Bandikui Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BKP','Bakhtiyarpur Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BKSC','Bokaro Stl City (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BNC','Bangalore Cant');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BOE','Barsoi Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BRC','Vadodara Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BSP','Bilaspur Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BUA','Baradwar');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BVI','Borivali');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('BYT','Bhatapara');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CDG','Chandigarh');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CHI','Chiplun');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CNB','Kanpur Central');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CPH','Champa');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CRJ','Chittaranjan');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CRP','Chandrapura');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('CSMT','C Shivaji Maharaj T');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DBD','Deoband');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DDN','Dehradun');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DEC','Delhi Cantt');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DEE','Delhi S Rohilla');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DGG','Dongargarh');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DGR','Durgapur (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DHN','Dhanbad Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DR','Dadar');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('DURG','Durg');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ET','Itarsi Jn (Rev)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ETW','Etawah');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('FL','Phulera Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('G','Gondia Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('GADJ','Gandhinagar Jaipur');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('GAR','Gadarwara');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('GGN','Gurgaon');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('GNC','Gandhinagar Capital');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('GWL','Gwalior Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('GZB','Ghaziabad');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('HBD','Hoshangabad');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('HDW','Haldwani (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('HW','Haridwar Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('HWH','Howrah Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('J','Jalna');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JAJ','Jhajha');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JBP','Jabalpur');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JMT','Jamtara');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JMU','Jamui');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JP','Jaipur (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JSME','Jasidih Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('JUC','Jalandhar City (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KGM','Kathgodam');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KHS','Kharsia');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KKDE','Kurukshetra Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KKW','Kankavli');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KLK','Kalka');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KNE','Kishanganj');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KPD','Katpadi Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KSG','Kishangarh');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KUDL','Kudal');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KUN','Karnal (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KY','Kareli');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('KYN','Kalyan Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('LDH','Ludhiana Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('LJN','Lucknow Ne');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('LKR','Luckeesarai Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('LKU','Lal Kuan');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MAO','Madgaon');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MAS','Mgr Chennai Ctr');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MB','Moradabad');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MDP','Madhupur Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MKA','Mokameh Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MLDT','Malda Town (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MMCT','Mumbai Central');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MML','Madan Mahal');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MMR','Manmad Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MOZ','Muzaffarnagar');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MTC','Meerut City Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('MURI','Muri');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ND','Nadiad Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NDLS','New Delhi');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NFK','New Farakka Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NIA','Janjgir Naila');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NJP','New Jalpaiguri');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NK','Nasik Road');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NMK','Nim Ka Thana');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NNL','Narnaul (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NU','Narsinghpur');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('NZM','Hazrat Nizamuddin');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('PGW','Phagwara Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('PNBE','Patna Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('PNC','Patna Saheb');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('PNP','Panipat Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('PNVL','Panvel');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('PPI','Pipariya');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('R','Raipur Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RE','Rewari');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RGS','Ringas Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RIG','Raigarh');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RJN','Raj Nandgaon');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RK','Roorkee');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RKMP','Rani Kamlapati(Bhopal)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RMU','Rampur');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RN','Ratnagiri');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RNC','Ranchi');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RNG','Raniganj');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RPJ','Rajpura Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('RUPC','Rudrapur City (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('SBC','Ksr Bengaluru');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('SIR','Sirhind Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('SKT','Sakti');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('SRE','Saharanpur (Rev)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('SRID','Shridham');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('ST','Surat (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('SWV','Sawantwadi Road');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('TDL','Tundla Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('THVM','Thivim');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('TKJ','Tilak Bridge');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('TLD','Tilda');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('TNA','Thane');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('TPZ','Tapri Jn');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('UMB','Ambala Cant Jn (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('VAPI','Vapi (RL)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('VGLB','Virangana Lakshmibai(Jhanshi)');
INSERT INTO Station_info (`Station_code`,`Station_name`) VALUES ('YJUD','Yamunanagar Jagadhri');

INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',5,'ALJN','20:10:00','20:12:00',382);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',2,'CNB','16:48:00','16:53:00',74);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',3,'ETW','18:12:00','18:14:00',212);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',6,'GZB','21:33:00','21:35:00',488);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',1,'LJN','15:35:00','15:35:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',7,'NDLS','22:02:00','22:02:00',511);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12003',4,'TDL','19:20:00','19:22:00',304);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',3,'ALJN','07:47:00','07:49:00',129);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',6,'CNB','11:20:00','11:25:00',437);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',5,'ETW','09:40:00','09:42:00',299);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',2,'GZB','06:40:00','06:42:00',24);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',7,'LJN','12:05:00','12:05:00',511);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',1,'NDLS','06:01:00','06:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12004',4,'TDL','08:45:00','08:47:00',207);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12005',5,'CDG','20:31:00','20:38:00',266);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12005',3,'KKDE','19:00:00','19:02:00',157);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12005',6,'KLK','21:15:00','21:15:00',303);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12005',1,'NDLS','17:15:00','17:15:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12005',2,'PNP','18:18:00','18:20:00',90);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12005',4,'UMB','19:50:00','19:53:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12006',2,'CDG','06:45:00','06:53:00',38);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12006',4,'KKDE','08:08:00','08:10:00',147);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12006',1,'KLK','06:15:00','06:15:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12006',6,'NDLS','10:15:00','10:15:00',303);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12006',5,'PNP','08:50:00','08:52:00',214);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12006',3,'UMB','07:33:00','07:38:00',105);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',9,'ADI','12:25:00','12:30:00',491);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',7,'ANND','11:10:00','11:13:00',427);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',5,'BH','09:44:00','09:46:00',322);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',6,'BRC','10:35:00','10:40:00',392);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',2,'BVI','06:33:00','06:35:00',30);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',10,'GNC','13:25:00','13:25:00',520);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',1,'MMCT','06:01:00','06:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',8,'ND','11:27:00','11:29:00',446);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',4,'ST','09:03:00','09:08:00',263);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12009',3,'VAPI','07:59:00','08:01:00',170);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',2,'ADI','14:50:00','15:05:00',29);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',4,'ANND','15:58:00','16:00:00',93);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',6,'BH','17:22:00','17:24:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',5,'BRC','16:30:00','16:35:00',128);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',9,'BVI','20:46:00','20:48:00',490);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',1,'GNC','14:50:00','14:50:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',10,'MMCT','21:45:00','21:45:00',520);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',3,'ND','15:39:00','15:41:00',74);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',7,'ST','18:10:00','18:15:00',257);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12010',8,'VAPI','19:19:00','19:21:00',350);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12011',5,'CDG','10:57:00','11:05:00',266);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12011',3,'KKDE','09:25:00','09:27:00',157);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12011',6,'KLK','11:04:00','11:04:00',303);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12011',1,'NDLS','07:04:00','07:04:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12011',2,'PNP','08:43:00','08:45:00',90);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12011',4,'UMB','10:20:00','10:22:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12012',2,'CDG','18:15:00','18:23:00',38);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12012',4,'KKDE','19:38:00','19:40:00',147);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12012',1,'KLK','17:45:00','17:45:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12012',6,'NDLS','21:05:00','21:05:00',303);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12012',5,'PNP','20:22:00','20:24:00',214);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12012',3,'UMB','19:03:00','19:08:00',105);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',8,'ASR','22:03:00','22:03:00',448);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',7,'BEAS','21:45:00','21:47:00',406);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',6,'JUC','21:14:00','21:16:00',369);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',4,'LDH','20:16:00','20:19:00',312);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',1,'NDLS','16:03:00','16:03:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',5,'PGW','20:48:00','20:50:00',348);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',3,'SIR','19:26:00','19:27:00',252);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12013',2,'UMB','18:50:00','18:52:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',1,'ASR','04:55:00','04:55:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',2,'BEAS','05:23:00','05:25:00',43);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',3,'JUC','05:58:00','06:01:00',79);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',5,'LDH','06:57:00','07:02:00',136);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',8,'NDLS','11:02:00','11:02:00',448);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',4,'PGW','06:19:00','06:21:00',100);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',6,'SIR','07:46:00','07:48:00',196);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12014',7,'UMB','08:32:00','08:34:00',250);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',10,'AII','12:55:00','12:55:00',443);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',5,'AWR','08:43:00','08:45:00',158);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',6,'BKI','09:29:00','09:31:00',218);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',2,'DEC','06:38:00','06:40:00',16);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',7,'GADJ','10:23:00','10:25:00',303);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',3,'GGN','06:56:00','06:58:00',32);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',8,'JP','10:40:00','10:45:00',309);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',9,'KSG','12:06:00','12:08:00',418);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',1,'NDLS','06:01:00','06:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12015',4,'RE','07:45:00','07:47:00',84);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',1,'AII','15:45:00','15:45:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',6,'AWR','19:45:00','19:47:00',286);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',5,'BKI','18:58:00','19:00:00',225);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',9,'DEC','21:55:00','21:57:00',428);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',4,'GADJ','17:59:00','18:01:00',141);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',8,'GGN','21:38:00','21:40:00',411);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',3,'JP','17:40:00','17:45:00',135);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',2,'KSG','16:11:00','16:13:00',26);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',10,'NDLS','22:04:00','22:04:00',443);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12016',7,'RE','20:50:00','20:52:00',360);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',8,'DDN','12:55:00','12:55:00',315);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',2,'GZB','07:21:00','07:23:00',26);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',7,'HW','11:36:00','11:41:00',263);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',4,'MOZ','08:41:00','08:43:00',129);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',3,'MTC','08:01:00','08:03:00',73);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',1,'NDLS','06:45:00','06:45:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',6,'RK','10:47:00','10:49:00',222);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12017',5,'SRE','09:50:00','10:15:00',187);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',1,'DDN','17:00:00','17:00:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',7,'GZB','22:07:00','22:09:00',289);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',2,'HW','18:12:00','18:17:00',52);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',5,'MOZ','20:43:00','20:45:00',186);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',6,'MTC','21:23:00','21:25:00',242);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',8,'NDLS','22:05:00','22:05:00',315);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',3,'RK','18:57:00','18:59:00',93);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12018',4,'SRE','19:35:00','22:00:00',128);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',4,'ASN','08:22:00','08:24:00',200);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',7,'BKSC','10:55:00','11:00:00',308);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',6,'CRP','10:26:00','10:28:00',293);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',2,'DGR','07:48:00','07:50:00',158);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',5,'DHN','09:23:00','09:28:00',259);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',1,'HWH','06:05:00','06:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',8,'MURI','11:45:00','11:47:00',361);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',9,'RNC','13:15:00','13:15:00',426);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12019',3,'RNG','08:06:00','08:08:00',182);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',6,'ASN','18:40:00','18:42:00',226);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',3,'BKSC','15:55:00','16:00:00',118);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',4,'CRP','16:33:00','16:35:00',133);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',8,'DGR','19:14:00','19:16:00',268);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',5,'DHN','17:40:00','17:45:00',167);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',9,'HWH','21:03:00','21:03:00',426);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',2,'MURI','14:50:00','14:52:00',66);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',1,'RNC','13:45:00','13:45:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12020',7,'RNG','18:56:00','18:58:00',244);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',3,'ASN','16:33:00','16:42:00',200);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',13,'BARH','20:47:00','20:49:00',468);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',14,'BKP','21:04:00','21:06:00',486);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',4,'CRJ','17:04:00','17:05:00',225);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',2,'DGR','15:56:00','15:58:00',158);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',11,'HTZ','20:19:00','20:21:00',435);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',1,'HWH','14:05:00','14:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',8,'JAJ','19:13:00','19:18:00',355);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',5,'JMT','17:20:00','17:21:00',240);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',9,'JMU','19:34:00','19:36:00',381);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',7,'JSME','18:16:00','18:19:00',311);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',10,'LKR','19:58:00','22:00:00',410);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',6,'MDP','17:51:00','17:53:00',282);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',12,'MKA','20:31:00','20:33:00',443);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',16,'PNBE','22:02:00','22:02:00',532);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12023',15,'PNC','21:04:00','21:42:00',522);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',14,'ASN','10:39:00','10:43:00',332);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',4,'BARH','06:24:00','06:26:00',64);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',3,'BKP','06:10:00','06:12:00',46);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',13,'CRJ','10:06:00','10:07:00',307);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',15,'DGR','11:15:00','11:17:00',374);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',6,'HTZ','06:53:00','06:55:00',97);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',16,'HWH','13:25:00','13:25:00',532);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',9,'JAJ','08:21:00','08:26:00',178);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',12,'JMT','09:52:00','09:53:00',293);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',8,'JMU','07:38:00','07:40:00',152);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',10,'JSME','08:53:00','08:56:00',222);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',7,'LKR','07:17:00','07:18:00',123);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',11,'MDP','09:20:00','09:22:00',251);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',5,'MKA','06:45:00','06:47:00',90);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',1,'PNBE','05:03:00','05:03:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12024',2,'PNC','05:45:00','05:47:00',10);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12027',3,'BNC','22:03:00','22:05:00',358);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12027',2,'KPD','19:08:00','19:01:00',130);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12027',1,'MAS','17:03:00','17:03:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12027',4,'SBC','22:25:00','22:25:00',362);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12028',2,'BNC','06:09:00','06:01:00',5);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12028',3,'KPD','08:58:00','09:00:00',232);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12028',4,'MAS','11:00:00','11:00:00',362);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12028',1,'SBC','06:00:00','06:00:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',8,'ASR','13:03:00','13:03:00',448);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',7,'BEAS','12:38:00','12:40:00',406);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',6,'JUC','12:06:00','12:08:00',369);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',4,'LDH','11:08:00','11:11:00',312);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',1,'NDLS','07:02:00','07:02:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',5,'PGW','11:40:00','11:42:00',348);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',3,'RPJ','10:02:00','10:04:00',227);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12029',2,'UMB','09:41:00','09:43:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',1,'ASR','16:05:00','16:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',2,'BEAS','17:18:00','17:20:00',43);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',3,'JUC','17:53:00','17:56:00',79);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',5,'LDH','18:05:00','18:55:00',136);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',8,'NDLS','22:05:00','22:05:00',448);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',4,'PGW','18:14:00','18:16:00',100);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',6,'RPJ','19:52:00','19:54:00',222);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12030',7,'UMB','20:28:00','20:30:00',250);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',8,'ASR','13:03:00','13:03:00',448);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',7,'BEAS','12:38:00','12:40:00',406);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',6,'JUC','12:06:00','12:08:00',369);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',4,'LDH','11:08:00','11:11:00',312);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',1,'NDLS','07:02:00','07:02:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',5,'PGW','11:40:00','11:42:00',348);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',3,'RPJ','10:02:00','10:04:00',227);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12031',2,'UMB','09:41:00','09:43:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',1,'ASR','16:05:00','16:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',2,'BEAS','17:18:00','17:20:00',43);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',3,'JUC','17:53:00','17:56:00',79);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',5,'LDH','18:50:00','18:55:00',136);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',8,'NDLS','22:05:00','22:05:00',448);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',4,'PGW','18:14:00','18:16:00',100);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',6,'RPJ','19:52:00','19:54:00',222);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12032',7,'UMB','20:28:00','20:30:00',250);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12033',3,'ALJN','09:10:00','09:12:00',308);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12033',1,'CNB','06:00:00','06:00:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12033',2,'ETW','07:19:00','07:21:00',138);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12033',4,'GZB','10:33:00','10:35:00',414);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12033',5,'NDLS','11:02:00','11:02:00',437);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12034',4,'CNB','20:05:00','20:05:00',437);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12034',3,'ETW','19:05:00','19:07:00',299);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12034',2,'GZB','16:22:00','16:24:00',24);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12034',1,'NDLS','15:05:00','15:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',7,'GZB','20:03:00','20:05:00',258);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',2,'HDW','15:25:00','15:27:00',7);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',1,'KGM','15:01:00','15:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',3,'LKU','16:02:00','16:04:00',23);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',6,'MB','18:10:00','18:15:00',117);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',8,'NDLS','20:05:00','20:05:00',281);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',5,'RMU','17:35:00','17:37:00',90);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12039',4,'RUPC','16:44:00','16:46:00',45);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',2,'GZB','06:58:00','07:00:00',24);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',7,'HDW','11:25:00','11:27:00',275);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',8,'KGM','11:55:00','11:55:00',281);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',6,'LKU','10:42:00','10:45:00',259);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',3,'MB','08:51:00','08:56:00',165);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',1,'NDLS','06:02:00','06:02:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',4,'RMU','09:24:00','09:26:00',192);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12040',5,'RUPC','10:01:00','10:03:00',237);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',2,'BHP','15:59:00','16:01:00',146);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',5,'BOE','20:24:00','20:25:00',416);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',1,'HWH','14:15:00','14:15:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',6,'KNE','21:08:00','21:10:00',473);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',4,'MLDT','19:10:00','19:15:00',328);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',3,'NFK','18:26:00','18:27:00',293);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12041',7,'NJP','22:35:00','22:35:00',561);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',6,'BHP','11:15:00','11:17:00',415);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',3,'BOE','07:19:00','07:20:00',145);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',7,'HWH','13:35:00','13:35:00',561);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',2,'KNE','06:33:00','06:35:00',88);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',4,'MLDT','08:45:00','08:50:00',233);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',5,'NFK','09:21:00','09:22:00',268);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12042',1,'NJP','05:03:00','05:03:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12045',4,'CDG','22:35:00','22:35:00',266);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12045',2,'KUN','20:35:00','20:37:00',124);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12045',1,'NDLS','19:15:00','19:15:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12045',3,'UMB','21:50:00','21:52:00',199);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12046',1,'CDG','12:15:00','12:15:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12046',3,'KUN','13:45:00','13:47:00',143);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12046',4,'NDLS','15:03:00','15:03:00',266);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12046',2,'UMB','12:55:00','12:57:00',68);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12049',3,'AGC','17:40:00','17:45:00',216);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12049',2,'GWL','16:03:00','16:05:00',98);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12049',4,'NZM','19:03:00','19:03:00',403);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12049',1,'VGLB','15:05:00','15:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12050',2,'AGC','09:50:00','09:55:00',188);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12050',3,'GWL','11:07:00','11:09:00',306);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12050',1,'NZM','08:01:00','08:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12050',4,'VGLB','12:35:00','12:35:00',403);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',5,'CHI','09:16:00','09:18:00',325);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',1,'CSMT','05:01:00','05:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',2,'DR','05:18:00','05:20:00',9);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',7,'KKW','11:48:00','11:50:00',587);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',8,'KUDL','12:18:00','12:20:00',626);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',11,'MAO','14:01:00','14:01:00',765);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',4,'PNVL','06:23:00','06:25:00',69);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',6,'RN','10:25:00','10:30:00',431);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',9,'SWV','12:40:00','12:42:00',655);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',10,'THVM','13:08:00','13:10:00',701);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12051',3,'TNA','05:43:00','05:45:00',34);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',7,'CHI','19:10:00','19:12:00',441);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',11,'CSMT','23:03:00','23:03:00',765);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',10,'DR','23:08:00','23:10:00',757);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',5,'KKW','16:28:00','16:30:00',179);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',4,'KUDL','16:02:00','16:04:00',140);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',1,'MAO','14:04:00','14:04:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',8,'PNVL','21:58:00','22:00:00',697);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',6,'RN','18:10:00','18:15:00',335);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',3,'SWV','15:44:00','15:46:00',111);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',2,'THVM','15:02:00','15:22:00',65);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12052',9,'TNA','22:43:00','22:45:00',732);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',11,'ASR','22:05:00','22:05:00',407);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',10,'BEAS','21:13:00','21:15:00',364);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',1,'HW','14:45:00','14:45:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',9,'JUC','20:35:00','20:40:00',328);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',7,'LDH','19:03:00','19:35:00',271);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',8,'PGW','20:04:00','20:06:00',307);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',2,'RK','15:26:00','15:28:00',42);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',6,'SIR','18:31:00','18:33:00',211);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',3,'SRE','16:15:00','16:20:00',76);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',5,'UMB','17:43:00','17:50:00',158);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12053',4,'YJUD','16:46:00','16:48:00',107);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',1,'ASR','06:05:00','06:05:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',2,'BEAS','07:18:00','07:20:00',43);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',11,'HW','13:05:00','13:05:00',407);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',3,'JUC','07:57:00','08:02:00',79);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',5,'LDH','08:58:00','09:03:00',136);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',4,'PGW','08:20:00','08:22:00',100);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',10,'RK','13:00:00','13:02:00',366);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',6,'SIR','10:00:00','10:02:00',196);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',9,'SRE','12:23:00','12:28:00',331);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',7,'UMB','10:55:00','11:05:00',250);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12054',8,'YJUD','11:41:00','11:43:00',301);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',5,'DBD','17:32:00','17:34:00',153);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',9,'DDN','21:01:00','21:01:00',305);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',2,'GZB','15:53:00','15:55:00',26);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',8,'HW','19:33:00','19:38:00',253);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',4,'MOZ','17:12:00','17:14:00',129);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',3,'MTC','16:32:00','16:34:00',73);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',1,'NDLS','15:02:00','15:02:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',7,'RK','18:46:00','18:48:00',212);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12055',6,'TPZ','18:09:00','18:11:00',180);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',5,'DBD','08:20:00','08:22:00',153);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',1,'DDN','05:00:00','05:00:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',8,'GZB','10:16:00','10:18:00',280);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',2,'HW','06:25:00','06:30:00',52);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',6,'MOZ','08:40:00','08:42:00',177);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',7,'MTC','09:21:00','09:23:00',232);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',10,'NDLS','11:05:00','11:05:00',305);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',3,'RK','07:10:00','07:12:00',93);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',9,'TKJ','10:44:00','10:45:00',303);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12056',4,'TPZ','07:58:00','08:00:00',125);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',3,'ET','19:10:00','19:15:00',86);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',5,'GAR','20:44:00','20:45:00',203);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',2,'HBD','18:32:00','18:34:00',68);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',10,'JBP','22:55:00','22:55:00',331);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',6,'KY','21:03:00','21:05:00',231);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',9,'MML','22:33:00','22:35:00',328);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',7,'NU','21:18:00','21:02:00',247);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',4,'PPI','20:08:00','20:10:00',153);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',1,'RKMP','17:04:00','17:04:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12061',8,'SRID','21:44:00','21:45:00',278);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',8,'ET','09:10:00','09:20:00',246);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',6,'GAR','07:14:00','07:15:00',129);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',9,'HBD','09:38:00','09:40:00',263);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',1,'JBP','05:03:00','05:03:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',5,'KY','06:49:00','06:00:00',100);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',2,'MML','05:36:00','05:38:00',4);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',4,'NU','06:34:00','06:35:00',85);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',7,'PPI','07:43:00','07:45:00',178);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',10,'RKMP','11:00:11','11:00:11',338);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12062',3,'SRID','06:09:00','06:10:00',54);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',1,'AII','05:04:00','05:04:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',9,'DEC','11:03:00','11:05:00',364);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',10,'DEE','11:35:00','11:35:00',373);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',3,'FL','06:48:00','06:50:00',80);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',8,'GGN','10:46:00','10:48:00',347);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',2,'KSG','06:06:00','06:08:00',26);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',5,'NMK','08:20:00','08:22:00',194);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',6,'NNL','08:58:00','09:00:09',244);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',7,'RE','09:58:00','10:00:10',295);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12065',4,'RGS','07:43:00','07:45:00',147);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',10,'AII','22:15:00','22:15:00',373);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',2,'DEC','16:30:00','16:32:00',10);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',1,'DEE','16:15:00','16:15:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',8,'FL','20:46:00','20:48:00',294);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',3,'GGN','16:48:00','16:50:00',27);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',9,'KSG','21:27:00','21:29:00',348);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',6,'NMK','18:59:00','19:01:00',180);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',5,'NNL','18:21:00','18:23:00',130);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',4,'RE','17:35:00','17:37:00',78);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12066',7,'RGS','19:38:00','19:41:00',227);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',7,'AKT','07:47:00','07:49:00',106);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',8,'BSP','08:35:00','08:45:00',133);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',4,'BUA','07:02:00','07:04:00',65);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',9,'BYT','09:23:00','09:25:00',179);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',5,'CPH','07:19:00','07:24:00',80);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',14,'DGG','12:15:00','12:17:00',342);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',12,'DURG','11:25:00','11:30:00',280);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',15,'G','13:03:00','13:03:00',415);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',2,'KHS','06:33:00','06:35:00',34);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',6,'NIA','07:33:00','07:35:00',91);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',11,'R','10:25:00','10:30:00',243);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',1,'RIG','06:01:00','06:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',13,'RJN','11:52:00','11:54:00',311);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',3,'SKT','06:48:00','06:50:00',50);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12069',10,'TLD','09:44:00','09:46:00',206);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',9,'AKT','20:07:00','20:09:00',310);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',8,'BSP','19:35:00','19:45:00',283);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',12,'BUA','20:52:00','20:54:00',351);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',7,'BYT','18:38:00','18:40:00',237);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',11,'CPH','20:36:00','20:41:00',336);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',2,'DGG','15:51:00','15:53:00',74);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',4,'DURG','17:00:00','17:05:00',136);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',1,'G','14:55:00','14:55:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',14,'KHS','21:21:00','21:23:00',381);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',10,'NIA','20:22:00','20:24:00',325);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',5,'R','17:40:00','17:45:00',173);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',15,'RIG','22:00:00','22:00:00',415);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',3,'RJN','16:17:00','16:19:00',105);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',13,'SKT','21:06:00','21:08:00',366);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12070',6,'TLD','18:16:00','18:18:00',210);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',7,'AWB','18:25:00','18:30:00',372);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',1,'CSMT','12:01:00','12:01:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',2,'DR','12:23:00','12:25:00',9);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',8,'J','19:45:00','19:45:00',435);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',4,'KYN','13:07:00','13:10:00',54);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',6,'MMR','16:45:00','16:05:00',261);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',5,'NK','15:35:00','15:40:00',188);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12071',3,'TNA','12:43:00','12:45:00',34);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',2,'AWB','09:15:00','09:20:00',63);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',8,'CSMT','16:02:00','16:02:00',437);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',7,'DR','15:48:00','15:50:00',428);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',1,'J','08:03:00','08:03:00',0);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',5,'KYN','15:02:00','15:05:00',383);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',3,'MMR','11:15:00','11:20:00',176);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',4,'NK','12:17:00','12:20:00',249);
INSERT INTO Train_Route (`Train_No`,`Station_No`,`Station_Code`,`Arrival_Time`,`Departure_Time`,`Distance`) VALUES ('12072',6,'TNA','15:23:00','15:25:00',404);

INSERT INTO status (`Status_code`,`message`) VALUES (1,'Train is running on Time and standing on the searched');
INSERT INTO status (`Status_code`,`message`) VALUES (2,'Train is running on time and will arrive on seached station');
INSERT INTO status (`Status_code`,`message`) VALUES (3,'Train is running on time and has departed from the searched station');
INSERT INTO status (`Status_code`,`message`) VALUES (4,'Train has not started from source yet');
INSERT INTO status (`Status_code`,`message`) VALUES (5,'Train has arrived at destination on time');
INSERT INTO status (`Status_code`,`message`) VALUES (11,'Train is running late and standing on the searched');
INSERT INTO status (`Status_code`,`message`) VALUES (12,'Train is running late and will arrive on seached station');
INSERT INTO status (`Status_code`,`message`) VALUES (13,'Train is running late and has departed from the searched station');
INSERT INTO status (`Status_code`,`message`) VALUES (14,'Train has not started from source yet and will start late');
INSERT INTO status (`Status_code`,`message`) VALUES (15,'Train has arrived at destination late');
INSERT INTO status (`Status_code`,`message`) VALUES (21,'No Train Between Searched Station');

drop table exp_sch;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkstatus`(IN tno VARCHAR(10),in scode varchar(10),out status1 int)
READS SQL DATA
DETERMINISTIC
SQL SECURITY INVOKER
COMMENT 'Enter a Valid Train Number'
BEGIN

declare arr1 TIME;
declare dep1 TIME;
declare src TIME;
declare des TIME;
declare temp1 int;
declare stat_name varchar(45);

-- print 'WELCOME TO LIVE TRAIN RUNNING SYSTEM' ;

If (SELECT count(Train_No) from train_details where Train_No=tno) = 0
then begin
	set tno='12003';
	set scode='LJN';
    end;
end if;



create table schedule as SELECT Train_No,Station_No,Station_Code,station_info.Station_Name,Arrival_Time,Departure_Time,Distance
 from train_route natural join station_info where Train_No=tno;
create table station_code_search as SELECT station_code  from schedule;
SELECT  count(Station_Code) into temp1 from station_code_search where Station_Code=scode;

If (temp1) = 0
then set scode=(select station_code from train_route where train_no=tno and station_no=1);
end if;

SELECT source_time into src from train_details where Train_No=tno;
SELECT destination_time into des from train_details where Train_No=tno;
SELECT Arrival_Time into arr1 from schedule where station_code=scode;
SELECT Departure_Time into dep1 from schedule where station_code=scode;
SELECT Station_Name into stat_name from Station_info where station_code=scode;
drop table schedule;
drop table station_code_search;

IF curtime() > src and curtime()< des
THEN 
	BEGIN
	IF curtime() > arr1 and curtime() < dep1
	THEN set status1=1;
	ELSEIF curtime() < arr1
	THEN 
		begin
		set status1=2;
		end;
	ELSE set status1=3;
	END IF;
	END;
ELSEIF curtime() < src
THEN set status1=4;
ELSE set status1=5;
END IF;
END$$
DELIMITER ;

call checkstatus('12003','TDL',@status1);
select @status1 as '';
select message from status where status_code=@status1;
drop procedure checkstatus;



DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `latestatus`(in exp_src time,in exp_des time,in exp_arr1 time,in exp_dep1 time ,out status1 int)
READS SQL DATA
DETERMINISTIC
SQL SECURITY INVOKER
COMMENT 'Enter a Valid Train Number'
BEGIN

IF curtime() > exp_src and curtime()< exp_des
THEN 
	BEGIN
	IF curtime() > exp_arr1 and curtime() < exp_dep1
	THEN set status1=11;
	ELSEIF curtime() < exp_arr1
	THEN 
		begin
		set status1=12;
		end;
	ELSE set status1=13;
	END IF;
	END;
ELSEIF curtime() < exp_src
THEN set status1=14;
ELSE set status1=15;
END IF;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkstatuswhenlate`(IN tno VARCHAR(10),in scode varchar(10),out status1 int)
READS SQL DATA
DETERMINISTIC
SQL SECURITY INVOKER
COMMENT 'Enter a Valid Train Number'
BEGIN

declare arr1 TIME;
declare dep1 TIME;
declare src TIME;
declare des TIME;
declare temp1 int;
declare stat_name varchar(45);
declare exp_arr1 TIME;
declare exp_dep1 TIME;
declare exp_src TIME;
declare exp_des TIME;
declare cnt1 int;
declare cnt2 int;
declare delayno int;
-- checks if train_no entered does not match with any train_no in database ,then it enters a default train_no and scode 
If (SELECT count(Train_No) from train_details where Train_No=tno) = 0
then begin
	set tno='12003';
	set scode='LJN';
    end;
end if;

create table schedule as SELECT Train_No,Station_No,Station_Code,station_info.Station_Name,Arrival_Time,Departure_Time,Distance
 from train_route natural join station_info where Train_No=tno;
create table station_code_search as SELECT station_code  from schedule;
SELECT  count(Station_Code) into temp1 from station_code_search where Station_Code=scode;

create table exp_sch as SELECT Train_No,Station_No,Station_Code,station_info.Station_Name,Arrival_Time as Exp_Arrival_Time,Departure_Time as Exp_Departure_Time,Distance from train_route natural join station_info where Train_No=tno;
create table exp_src_des as SELECT train_no,source_time,destination_time from train_details where Train_No=tno;
    
SELECT count(Train_No1) into cnt1 from train_no_visited where Train_No1=tno;
SELECT count(Train_No2) into cnt2 from train_no_visited where Train_No2=tno;

    
-- To check delay feature for admin comment or uncomment
set delayno=1;   
    
    If (cnt1>0 or delayno=1) and cnt2=0
    then begin
        update exp_sch set exp_arrival_time=addtime(exp_arrival_time,"00:15:00") where station_no >=1;
        update exp_sch set exp_departure_time=addtime(exp_departure_time,"00:15:00") where station_no >=1;
        update exp_src_des set source_time=addtime(source_time,"00:15:00");
        update exp_src_des set destination_time=addtime(destination_time,"00:15:00");
        INSERT INTO train_no_visited (`Train_No1`) VALUES (tno);
        end;
    else INSERT INTO train_no_visited (`Train_No2`) VALUES (tno);
    end if;

If temp1 = 0
then set scode=(select station_code from train_route where train_no=tno and station_no=1);
end if;

SELECT source_time into src from train_details where Train_No=tno;
SELECT destination_time into des from train_details where Train_No=tno;
SELECT Arrival_Time into arr1 from schedule where station_code=scode;
SELECT Departure_Time into dep1 from schedule where station_code=scode;
SELECT Station_Name into stat_name from Station_info where station_code=scode;

drop table schedule;
drop table station_code_search;
drop table exp_sch;
drop table exp_src_des;
if arr1 = exp_arr1 and dep1 = exp_dep1
then begin
IF curtime() > src and curtime()< des
THEN 
	BEGIN
	IF curtime() > arr1 and curtime() < dep1
	THEN set status1=1;
	ELSEIF curtime() < arr1
	THEN 
		begin
		set status1=2;
		end;
	ELSE set status1=3;
	END IF;
	END;
ELSEIF curtime() < src
THEN set status1=4;
ELSE set status1=5;
END IF;
end;
else call latestatus(exp_src,exp_des,exp_arr1,exp_dep1,@status1);
end if;
select message from status where status_code=@status1;
-- to check answer

END$$
DELIMITER ;
call checkstatuswhenlate('12003','TDL',@status1);




-- procedure to find train between stations with input variables as Src_code and des_code and displays available trains between the selected station
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `trainBetweenStation`(IN src_code VARCHAR(10),in des_code varchar(10),out status1 int)
READS SQL DATA
DETERMINISTIC
SQL SECURITY INVOKER
COMMENT 'Enter a Valid Train Number'
BEGIN
-- checks if station code entered does not match with any station code in database ,then it enters a default src_code and des_code 
if(SELECT COUNT(STATION_CODE) FROM STATION_INFO WHERE STATION_CODE=src_code)=0
THEN 
	set src_code='GZB';
END IF;

if(SELECT COUNT(STATION_CODE) FROM STATION_INFO WHERE STATION_CODE=des_code)=0
    THEN set des_code='NDLS';
END IF;

create table c1 as select station_no,train_no,departure_time from train_route where station_code = src_code;
create table c2 as select station_no,train_no,arrival_time from train_route where station_code = des_code;
create view c3 as (SELECT C1.TRAIN_NO,c1.departure_time,c2.arrival_time FROM C1,C2 WHERE C1.TRAIN_NO = C2.TRAIN_NO AND C1.STATION_NO<C2.STATION_NO);
create view c4 as (SELECT TRAIN_DETAILS.TRAIN_NO,TRAIN_DETAILS.TRAIN_NAME,c3.departure_time,c3.arrival_time FROM TRAIN_DETAILS,C3 WHERE C3.TRAIN_NO=TRAIN_DETAILS.TRAIN_NO);



if(select count(*) from c3)=0
then 
	select message from status where status_code=21;
else 
	select * from c4;
 end if;
 
drop table c1;
drop table c2;
drop view c3;
drop view c4;
 
END$$
DELIMITER ;

call trainBetweenStation('GZB','NDLS',@status1);

-- drop procedure checkstatus;
-- drop procedure latestatus;
-- drop procedure trainBetweenStation;

-- drop databse railway12;
