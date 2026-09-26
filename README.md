# CampusConnect

CampusConnect is a web-based college management application developed using **Spring Boot, JSP, Hibernate/JPA, and MySQL**.

The system provides a centralized platform for students to report **lost and found items** and submit **college-related complaints**.

## Features

* 🏠 Home page
* 🔎 Lost and Found management
* 📢 Report lost items
* 📦 Report found items
* 📝 Submit complaints
* 👨‍💼 Admin section for managing records
* 💾 MySQL database integration
* 🎨 Responsive and user-friendly JSP interface

## Technologies Used

* **Java 17**
* **Spring Boot**
* **Spring MVC**
* **Spring Data JPA**
* **Hibernate**
* **JSP**
* **HTML/CSS**
* **MySQL**
* **Maven**
* **Eclipse IDE**
* **Git & GitHub**

## Project Structure

```text
CampusConnect
├── src/main/java
│   └── com.seed
│       ├── controller
│       ├── entity
│       ├── repository
│       └── service
│
├── src/main/resources
│
├── src/main/webapp
│   ├── css
│   └── WEB-INF
│       └── views
│
├── pom.xml
└── README.md
```

## Main Modules

### Lost & Found

Students can report lost or found items and view the available records.

### Complaints

Students can submit complaints related to college facilities or services.

### Admin

The admin section provides access to manage complaints and lost-and-found records.

## How to Run

1. Clone the repository.

```bash
git clone https://github.com/Rutujakuthe/CampusConnect.git
```

2. Open the project in Eclipse as an existing Maven project.

3. Configure your MySQL database in:

```text
src/main/resources/application.properties
```

4. Update the database username and password according to your local MySQL setup.

5. Run the Spring Boot application.

6. Open:

```text
http://localhost:8082/
```

## Future Enhancements

* Student login and registration
* Email notifications
* Image upload for lost and found items
* Search and filter functionality
* Improved admin dashboard
* Online deployment

## Author

**Rutuja Kuthe**

Developed as a college project using Spring Boot and Java.
