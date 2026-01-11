# Aikiya (Demo01)

![Java](https://img.shields.io/badge/Java-17-orange)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.0-brightgreen)
![Maven](https://img.shields.io/badge/Maven-Build-blue)
![MySQL](https://img.shields.io/badge/Database-MySQL%20%2F%20MariaDB-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

A Spring Boot–based Java web application built using **JSP**, **Spring MVC**, and **Spring Data JPA**, packaged as a **WAR** file and connected to a **MySQL / MariaDB** database.

---

## 📌 Project Overview

**Aikiya** is a Java web application that demonstrates:

- JSP-based MVC architecture  
- Spring Boot configuration with WAR packaging  
- Database persistence using Spring Data JPA (Hibernate)  
- Embedded Tomcat server  
- MySQL / MariaDB integration  

This project is ideal for learning **Spring Boot MVC + JSP + JPA** in an enterprise-style setup.

---

## 🛠 Tech Stack

| Category | Technology |
|-------|------------|
| Language | Java 17 |
| Framework | Spring Boot 2.5.0 |
| Build Tool | Maven |
| Packaging | WAR |
| Web Server | Embedded Tomcat |
| View Layer | JSP, JSTL |
| ORM | Hibernate (JPA) |
| Database | MySQL / MariaDB |
| Testing | JUnit |

---




---

## 🖼 Application Screenshots

### 🔐 Login Page
![Login Page](https://raw.githubusercontent.com/patidarritesh2/Aikiya/main/screenshots/login.png)

### 📝 Register Page
![Register Page](https://raw.githubusercontent.com/patidarritesh2/Aikiya/main/screenshots/register.png)

### 👤 User Details Page
![User Details Page](https://raw.githubusercontent.com/patidarritesh2/Aikiya/main/screenshots/userDetails.png)

---

## ⚙️ Configuration

### Server Configuration



server.port=9000


Application URL:


http://localhost:9000


---

### Database Configuration



spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/demo?allowPublicKeyRetrieval=true&useSSL=false
spring.datasource.username=root
spring.datasource.password=root



---

### JPA & Hibernate Configuration



spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=false
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MariaDB53Dialect


---

### JSP View Resolver



spring.mvc.view.prefix=/WEB-INF/view/
spring.mvc.view.suffix=.jsp


---

## ▶️ How to Run the Project

### Prerequisites

- Java 17+
- Maven
- MySQL / MariaDB

Create database:



CREATE DATABASE demo;


---

### Run Application



mvn spring-boot:run


Open in browser:


http://localhost:9000


---

## 🧪 Testing

Run tests using:



mvn test


---

## 📦 Build WAR File

To generate WAR:



mvn clean package


WAR file location:


target/Demo01.war


This WAR can be deployed to an external Tomcat server if needed.

---

## 🚀 Future Enhancements

- Spring Security (Authentication & Roles)
- Convert MVC to REST APIs
- Swagger / OpenAPI documentation
- Docker & Docker Compose support
- Environment-based profiles (dev / prod)

---

## 👨‍💻 Author

**Ritesh Patidar**  
GitHub: https://github.com/patidarritesh2

---

