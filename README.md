# springbootJpaJspMysqlCrud
Spring boot Jpa Jsp mysql crud demo 

# Whats need to create this project in eclipse
1) java 8 or higher version
2) eclipse photon
3) mysql workbech

# steps to create this project simply
Goto  eclipse marketpace
1) Search Spring Tools 4 and instal into your ecipse editor
2) Goto Fie-> New -> Other -> Search 
  spring starter project 
  click next -> enter Name, Group, artifect, descripton
  click next -> search and select
  Spring Web Starter, Spring Data Jpa, MySql Driver
  cick finish
  
  
# apication.property file
  
spring.datasource.driverClassName=com.mysql.jdbc.Driver
spring.jpa.hibernate.ddl-auto= update
spring.datasource.url=jdbc:mysql://localhost:3306/test?autoReconnect=true&allowPublicKeyRetrieval=true&useSSL=false
spring.datasource.username=root
spring.datasource.password=root

spring.datasource.tomcat.max-wait= 20000
spring.datasource.tomcat.max-active= 50
spring.datasource.tomcat.max-idle= 20
spring.datasource.tomcat.min-idle= 15

spring.jpa.properties.hibernate.dialect = org.hibernate.dialect.MySQL5Dialect
spring.jpa.properties.hibernate.id.new_generator_mappings = false
spring.jpa.properties.hibernate.format_sql = true

logging.level.org.hibernate.SQL= DEBUG
logging.level.org.hibernate.type.descriptor.sql.BasicBinder= TRACE
spring.jpa.show-sql=true

server.error.whitelabel.enabled=false

spring.mvc.view.prefix: /
spring.mvc.view.suffix: .jsp

server.port = 8080

# you simply import into your environment and run and also create anther editors intellij idea etc.

# correct me if any issue found!
Thanks
