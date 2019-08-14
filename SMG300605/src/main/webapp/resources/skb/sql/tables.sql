
-- GCP SKB main create Minimum START
-- Begining of skb

--skb_event_date varchar(5),
CREATE TABLE skb_main (
  skb_event_id int(10) NOT NULL AUTO_INCREMENT,
  skb_event_title varchar(18) NOT NULL,
  skb_event_date Date NOT NULL,
  skb_event_start_time TIME (6),
  skb_event_end_time TIME(6),
  skb_event_text_01 varchar(20),
  skb_event_text_02 varchar(20),
  skb_event_text_03 varchar(20),
  skb_event_text_04 varchar(20),
  skb_event_text_05 varchar(20),
  skb_event_text_06 varchar(20),
  skb_event_text_07 varchar(20),
  skb_event_text_08 varchar(20),
  skb_event_text_09 varchar(20),
  skb_event_text_10 varchar(20),
  skb_event_flag varchar(5) NOT NULL,
  PRIMARY KEY (`skb_event_id`)
  );
  

INSERT INTO skb_main(
  skb_event_title ,
  skb_event_date ,
  skb_event_start_time ,
  skb_event_end_time ,
  skb_event_text_01 ,
  skb_event_text_02 ,
  skb_event_text_03 ,
  skb_event_text_04 ,
  skb_event_text_05 ,
  skb_event_text_06 ,
  skb_event_text_07 ,
  skb_event_text_08 ,
  skb_event_text_09 ,
  skb_event_text_10 ,
  skb_event_flag
  )
  
  
  VALUES(
  "TEST TEST" ,
  "2019-08-04" ,
  "190000" ,
  "220000" ,
  "★" ,
  "詳細はLINEお願いします。" ,
  "参加費は600円です(*^^*)" ,
  "★★★★★★★★★★★★★" ,
  "ご不明点あれば代表までご連絡ください",
  "よろしくお願いします(*^^)♪" ,
  "SKB代表 秀星(しゅうせい) " ,
  "09081174283" ,
  "LINEID: ma_ko_to_o" ,
  "",
  "ready"
  );
  
  池袋小学校      2019-08-04 190000 220000
  池袋 第三小学校  2019-08-11 1830 2130
  池袋 第三小学校  2019-08-12 1830 2130
  池袋 第三小学校  2019-08-13 1830 2130
  
  
   update skb_main set 
   skb_event_day='日曜日' 
   where skb_event_id=1;
   
   update skb_main
   set skb_event_flag='ready'
   where skb_event_id=9;

   select *
   from skb_main
   where skb_event_flag='ready'
   order by skb_event_date asc;
   