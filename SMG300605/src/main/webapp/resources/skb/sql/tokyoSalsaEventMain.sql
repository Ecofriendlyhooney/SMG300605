select * from salsa_tokyo_main where tse_event_date = DATE(NOW());

CREATE TABLE salsa_tokyo_main (
  tse_event_id int(10) NOT NULL AUTO_INCREMENT,
  tse_event_title varchar(18) NOT NULL,
  tse_event_date Date NOT NULL,
  tse_event_start_time TIME (6),
  tse_event_end_time TIME(6),
  tse_event_dj varchar(6),
  tse_event_text_01 varchar(20),
  tse_event_text_02 varchar(20),
  tse_event_text_03 varchar(20),
  tse_event_text_04 varchar(20),
  tse_event_text_05 varchar(20),
  tse_event_text_06 varchar(20),
  tse_event_text_07 varchar(20),
  tse_event_text_08 varchar(20),
  tse_event_text_09 varchar(20),
  tse_event_text_10 varchar(20),
  tse_event_flag varchar(5) NOT NULL,
  PRIMARY KEY (`tse_event_id`)
  );

INSERT INTO salsa_tokyo_main(
  tse_event_title ,
  tse_event_date ,
  tse_event_start_time ,
  tse_event_end_time ,
  tse_event_dj,
  tse_event_text_01 ,
  tse_event_text_02 ,
  tse_event_text_03 ,
  tse_event_text_04 ,
  tse_event_text_05 ,
  tse_event_text_06 ,
  tse_event_text_07 ,
  tse_event_text_08 ,
  tse_event_text_09 ,
  tse_event_text_10 ,
  tse_event_flag
  )
  VALUES(
  "TEST01 " ,
  "2019-09-02" ,
  "183000" ,
  "210000" ,
  "シゲ" ,
  "ＹＯＵ　ＡＲＥ　ＳＡＬＳＡ" ,
  "＠中目黒 ＧＴ プラザホール" ,
  "DJ シゲ" ,
  "エントランス料金" ,
  "1000円(持ち込み自由)" ,
  "" ,
  "" ,
  "" ,
  "" ,
  "" ,
  "ready"
  );
  
  