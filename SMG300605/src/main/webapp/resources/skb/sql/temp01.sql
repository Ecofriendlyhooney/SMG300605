
-- GCP SKB main create Minimum START
-- Begining of skb
CREATE TABLE skb_main (
  skb_event_id int(10) NOT NULL AUTO_INCREMENT,
  skb_event_title varchar(18) NOT NULL,
  skb_event_date varchar(5),
  skb_event_day varchar(3),
  skb_event_start_time varchar(5),
  skb_event_end_time varchar(5),
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
  PRIMARY KEY (`skb_event_id`)
  );
  

INSERT INTO skb_main(
  skb_event_title ,
  skb_event_date ,
  skb_event_day ,
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
  skb_event_text_10
  )
  
  VALUES(
  "池袋小学校" ,
  "08/04" ,
  "SUN" ,
  "19:00" ,
  "22:00" ,
  "池袋/北池袋駅最寄りの会場となります" ,
  "詳細はLINEお願いします。" ,
  "参加費は600円です(*^^*)" ,
  "★★★★★★★★★★★★★" ,
  "ご不明点あれば代表までご連絡ください",
  "よろしくお願いします(*^^)♪" ,
  "SKB代表 秀星(しゅうせい) " ,
  "09081174283" ,
  "LINEID: ma_ko_to_o" ,
  ""
  );