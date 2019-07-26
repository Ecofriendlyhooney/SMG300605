-- SKB main
CREATE TABLE skb_main (
  event_schedule_id int(10) NOT NULL AUTO_INCREMENT,
  event_place_id varchar(20) NOT NULL,
  event_date TIMESTAMP NOT NULL,
  event_time_start TIME NOT NULL,
  event_time_end TIME NOT NULL,
  event_schedule_delete_flag varchar(5) NOT NULL,
  event_schedule_text_01 varchar(20),
  event_schedule_text_02 varchar(20),
  event_schedule_text_03 varchar(20),
  event_schedule_text_04 varchar(20),
  event_schedule_text_05 varchar(20),
  event_schedule_text_06 varchar(20),
  event_schedule_text_07 varchar(20),
  event_schedule_text_08 varchar(20),
  event_schedule_text_09 varchar(20),
  event_schedule_text_10 varchar(20),
  created_timestamp TIMESTAMP NOT NULL,
  updated_timestamp TIMESTAMP NOT NULL,
  created_by  varchar(10) NOT NULL,
  updated_by  varchar(10) NOT NULL,
  event_view_count int(10),
  participants_yes varchar(10),
  participants_no varchar(10),
  participants_cancelled varchar(10),
  PRIMARY KEY (`event_schedule_id`)
);

-- SKB place
CREATE TABLE skb_place (
	event_place_id int(10) NOT NULL AUTO_INCREMENT,
    event_place_name varchar(40) NOT NULL,
    event_place_default_text_01 varchar(20),
    event_place_default_text_02 varchar(20),
    event_place_default_text_03 varchar(20),
    event_place_default_text_04 varchar(20),
    event_place_default_text_05 varchar(20),
    event_place_default_text_06 varchar(20),
    event_place_default_text_07 varchar(20),
    event_place_default_text_08 varchar(20),
    event_place_default_text_09 varchar(20),
    event_place_default_text_10 varchar(20),
    created_timestamp TIMESTAMP NOT NULL,
    updated_timestamp TIMESTAMP NOT NULL,
    created_by  varchar(10) NOT NULL,
    updated_by  varchar(10) NOT NULL,
    PRIMARY KEY (`event_place_id`)
);

-- GCP SKB main create
CREATE TABLE skb_main (
  event_schedule_id int(10) NOT NULL AUTO_INCREMENT,
  event_place_id varchar(20) NOT NULL,
  event_date TIMESTAMP NOT NULL,
  event_time_start TIME NOT NULL,
  event_time_end TIME NOT NULL,
  event_schedule_delete_flag varchar(5) NOT NULL,
  event_schedule_text_01 varchar(20),
  event_schedule_text_02 varchar(20),
  event_schedule_text_03 varchar(20),
  event_schedule_text_04 varchar(20),
  event_schedule_text_05 varchar(20),
  event_schedule_text_06 varchar(20),
  event_schedule_text_07 varchar(20),
  event_schedule_text_08 varchar(20),
  event_schedule_text_09 varchar(20),
  event_schedule_text_10 varchar(20),
  created_timestamp datetime NOT NULL,
  updated_timestamp datetime NOT NULL,
  created_by  varchar(10) NOT NULL,
  updated_by  varchar(10) NOT NULL,
  event_view_count int(10),
  participants_yes varchar(10),
  participants_no varchar(10),
  participants_cancelled varchar(10),
  PRIMARY KEY (`event_schedule_id`)
);

-- GCP SKB main insert
CREATE TABLE skb_main (
  event_schedule_id ,
  event_place_id ,
  event_date ,
  event_time_start ,
  event_time_end ,
  event_schedule_delete_flag ,
  event_schedule_text_01 
  event_schedule_text_02 ,
  event_schedule_text_03 ,
  event_schedule_text_04 ,
  event_schedule_text_05 ,
  event_schedule_text_06 ,
  event_schedule_text_07 ,
  event_schedule_text_08 ,
  event_schedule_text_09 ,
  event_schedule_text_10 ,
  created_timestamp ,
  updated_timestamp ,
  created_by ,
  updated_by ,
  event_view_count,
  participants_yes ,
  participants_no ,
  participants_cancelled
  PRIMARY KEY (`event_schedule_id`)
);

INSERT INTO skb_main(
  event_place_id ,
  event_date ,
  event_time_start ,
  event_time_end ,
  event_schedule_delete_flag ,
  event_schedule_text_01 ,
  event_schedule_text_02 ,
  event_schedule_text_03 ,
  event_schedule_text_04 ,
  event_schedule_text_05 ,
  event_schedule_text_06 ,
  event_schedule_text_07 ,
  event_schedule_text_08 ,
  event_schedule_text_09 ,
  event_schedule_text_10 ,
  created_timestamp ,
  updated_timestamp ,
  created_by ,
  updated_by ,
  event_view_count ,
  participants_yes ,
  participants_no ,
  participants_cancelled) 
  
  VALUES(
  "ikebukuro_03" ,
  "2019/07/04" ,
  "19:30:00" ,
  "21:30:00",
  "ready" ,
  "cdedule_text_01" ,
  "chedule_text_02" ,
  "chedule_text_03" ,
  "chedule_text_04" ,
  "chedule_text_05" ,
  "edddule_text_06" ,
  "ehedule_text_07" ,
  "ehedule_text_08" ,
  "schdule_text_09" ,
  "chedule_text_10" ,
  CURRENT_TIMESTAMP ,
  CURRENT_TIMESTAMP ,
  "hooney" ,
  "hooney" ,
  3 ,
  "yes" ,
  "yes" ,
  "yes" );
