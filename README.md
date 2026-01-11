# Aikiya (Demo01)

![Java](https://img.shields.io/badge/Java-17-orange)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.0-brightgreen)
![Maven](https://img.shields.io/badge/Maven-Build-blue)
![MySQL](https://img.shields.io/badge/Database-MySQL%20%2F%20MariaDB-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

A Spring Boot–based Java web application using **JSP**, **Spring MVC**, and **Spring Data JPA**, packaged as a **WAR** and connected to a **MySQL/MariaDB** database.

---

## 📌 Project Overview

**Aikiya** is a Java web application built with Spring Boot that demonstrates:

- JSP-based MVC architecture  
- Database integration using Spring Data JPA  
- Embedded Tomcat server  
- WAR packaging  
- MySQL / MariaDB persistence  

---

## 🛠 Tech Stack

- **Java**: 17  
- **Spring Boot**: 2.5.0  
- **Build Tool**: Maven  
- **Packaging**: WAR  
- **Web Server**: Embedded Tomcat  
- **View Technology**: JSP, JSTL  
- **Database**: MySQL / MariaDB  
- **ORM**: Hibernate (JPA)  

---

## 📂 Project Structure

```text
src/
 └── main/
     ├── java/
     │   └── com/ritesh/
     ├── resources/
     │   └── application.properties
     └── webapp/
         └── WEB-INF/
             └── view/
                 └── *.jsp
pom.xml

⚙️ Configuration
Server Configuration
server.port=9000


Application URL:

http://localhost:9000

Database Configuration
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/demo?allowPublicKeyRetrieval=true&useSSL=false
spring.datasource.username=root
spring.datasource.password=root


⚠️ Security Warning
Do not commit real credentials in production.

JPA & Hibernate
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=false
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MariaDB53Dialect

JSP View Resolver
spring.mvc.view.prefix=/WEB-INF/view/
spring.mvc.view.suffix=.jsp

▶️ How to Run the Project
Prerequisites

Java 17+

Maven

MySQL / MariaDB

Database created:

CREATE DATABASE demo;

Run the Application
mvn spring-boot:run

Open in Browser
http://localhost:9000

🧪 Testing
mvn test

📦 Build WAR File
mvn clean package


Output:

target/Demo01.war

🚀 Future Enhancements

Spring Security

REST APIs

Swagger Documentation

Docker support

Role-based authentication

👨‍💻 Author

Ritesh Patidar
GitHub: https://github.com/patidarritesh2

