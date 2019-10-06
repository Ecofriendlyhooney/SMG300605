### TODO

[X] Admin Create : select button
[X] Input Validator
[X] input value : time
[X] input value : date
[X] Admin Create : default value setting
[x] DB segregation : smg300605 => badminton_skb / skb_main
[ ] DB segregation : new       => badminton_komagome / komagome_main
[ ] DB segregation : new       => dance_tokyo_salsa / tokyo_salsa_main

[x] SKB public page : contents text design
[x] SKB public page : indent
[x] SKB public page : contents text_10 margin-bottom add ( to avoid unintended click by below other event button)
[x] SKB About us  : weare => about us (Renaming)
[x] SKB About us : aboutus01,02,03 image file resizing (1mb =>100kb)
[x] SKB public page : og tag amend
[x] SKB map page : accordion Activate
[x] SKB map page : accordiong + button Align
[x] add August Link to appspot July 2019 (mvn appengine_deploy)
[x] nifty html backup
[x] Google analytics Setting
[X] SKB EDIT Button CSS apply]
[X] VM instance rearrangement 
[X] old skb-test-cloud, skb-cloud VM => smg300605 instance
[X] JSP URL reference amend
[X] updated JSP release
[X] old VM Shutdown   (skb-test-cloud, skb-cloud) Due to bill
[X] SQL select function (+ where flag="") 
[X] SQL Logical detele function => logical delete (update flag)
[X] SQL order by Date (ascending order)
[X] JSP place holder
[X] JSP validator- Max length
[X] SQL timestamp CRUD function - event date
[X] SQL timestamp CRUD function - event time
[X] TIME Picker https://timepicker.co/ https://timepicker.co/options/
[X] Date Picker https://api.jqueryui.com/datepicker/
[X] GCP Cloud SQL for MySQL timezone setting https://stackoverflow.com/questions/26492610/change-google-cloud-sql-current-timestamp-time-zone
  - SET @@session.time_zone='+09:00';
  - select now();
 
[X] SKB public Menu button background-color bgWhite amend  
[X] 300605 salsa calendar Menu button background-color bgWhite amend    
[ ] SKB TEXT rem unit amend
[ ] SKB 3rd school Map update (request by syusei)
[X] Start time - finish time cell combine with space
     - SKB public
     - SKB Admin
     - 300605 salsa Today
     - 300605 salsa Calendar  
[ ] Use LINE Login with Spring Security https://medium.com/@phayao/use-line-login-with-spring-security-fbaf59453c46
[ ] LINE social Login http://blog.naver.com/PostView.nhn?blogId=chan2rrj&logNo=220960346707 
[ ] social Login - Spring Boot OAuth2 Social Login with Google, Facebook, and Github(part1) - https://www.callicoder.com/spring-boot-security-oauth2-social-login-part-1/
[ ] GCP Batch : Clone tab - SKB event activate flag update batch
[ ] GCP Bitnami : bash shell - (delete ROOT folder/ delete ROOT.war/ mv ROOT.war /./catalina.sh stop/start https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/
[ ] GCP Stack Driver setting
[ ] https://cloud.google.com/scheduler/docs/tut-pub-sub
[ ] Ultimate Guide to LINE For Business https://rocketbots.io/blog/the-ultimate-guide-to-line-for-business/
[ ] Google Cloud Functions to access Google services (Using OAuth 2.0) https://cloud.google.com/community/tutorials/cloud-functions-oauth-gmail
[ ] icon https://icons8.com/icons/set/today
[ ] mobile site test https://search.google.com/test/mobile-friendly
[ ] mobile friendly test https://ready.mobi/
[ ] New Project SGSLG - Spring Gradle Social Login GCP

[ ] LINE LOGIN - minimum https://engineering.linecorp.com/ja/blog/spring-security-id-federation-line-starting-configuration-file/
[ ] ]Spring Bootで LINE ログイン] https://koirand.github.io/blog/2018/line-login-with-springboot/
[A] Integrating LINE Login with your web app https://developers.line.biz/en/docs/line-login/web/integrate-line-login/
[ ] MySQL inno Engine - https://www.openkm.com/wiki/index.php/MySQL_-_OpenKM_6.2

Creating and Using InnoDB Tables - http://download.nust.na/pub6/mysql/doc/refman/5.1/en/using-innodb-tables.html
- CREATE TABLE Author (authorId INT, name CHAR (20), address CHAR (20) INDEX (a)) ENGINE=InnoDB;
Maven Reference
- https://howtodoinjava.com/spring-boot2/crud-application-thymeleaf/
Gradle Reference
- https://medium.com/@namila007/build-a-complete-restful-service-using-springboot-2-0-and-gradle-e9e381a114d8
- https://www.ekiras.com/2015/08/spring-boot-mvc-gradle-sample-crud-project-setup
- https://www.jeejava.com/spring-boot-data-jpa-crud-example/
- https://github.com/oktadeveloper/okta-spring-boot-vue-crud-example
- https://reviewdb.io/posts/1505105199524/crud-operations-using-spring-boot-jpa-hibernate-postgresql
- https://reviewdb.io/posts/1503083112817/how-to-create-a-website-with-spring-boot-and-serve-static-content