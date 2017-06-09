# ExpDataWebBrowser
Browse , download the data from the experiments<br>
<br>
It is a pure Java Web Application, need a web app container such as Apache Tomcat 7 or above.<br>
A database is also needed. In my case, MySQL5.6 is used. The DB backupfile containing data is MySQL's dump file.<br>
<br>
A databases connection pool library, HikariCP-2.6.1 is used. There is a MyBatis library, but it was not used actually.<br>
<br>
When some new data is generted. Use the mysql's 'mysqldump' cmd in the RaspberryPi <br>
or some other data record devices to dump the database.Then use 'source' cmd to import the database.<br>
After import each dump file. Use the corresponding 'insert ignore into ...' SQL to merge the data. <br>
Then drop the imported data tables.<br>
