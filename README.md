# 🏋️‍♂️ Workout Tracker API

A RESTful API designed to help users track their fitness progress, manage workout routines, and log exercise history. Built with **Spring Boot 3** and **PostgreSQL**, fully containerized using **Docker**.

The project focuses on clean architecture, proper data handling, and secure authentication using JWT.

---

## 🛠️ Tech Stack

* **Java 17**
* **Spring Boot 3** (Web, Data JPA, Security, Validation)
* **Database:** PostgreSQL (Production/Docker), H2 (Testing)
* **Security:** Spring Security 6, JWT (Stateless Authentication)
* **Infrastructure:** Docker, Docker Compose
* **Documentation:** OpenAPI 3 (Swagger UI)
* **Testing:** JUnit 5, Mockito

---

## 💡 Implementation Details

* **Layered Architecture:** Separation of concerns using Controllers, Services, and Repositories.
* **DTO Pattern:** Data Transfer Objects are used for API requests and responses to decouple the internal database model from the public API.
* **Performance:** Optimized data fetching strategy in the `WorkoutService` to avoid the N+1 Select problem when saving complex objects.
* **Data Seeding:** The application includes a dictionary of ~140 exercises and muscle groups (loaded via `data.sql`) to provide a ready-to-use environment upon the first start.
* **Security:** Passwords are hashed using BCrypt. Access to resources is protected via JWT Bearer tokens.

---

## 🚀 Getting Started

### Prerequisites
* **Docker Desktop** (installed and running)
* **Java 17** (optional, if using Maven wrapper)

### Run with Docker (Database only)

The easiest way to run the project locally is to spin up the database in Docker and run the app via IntelliJ/Maven.

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/diegoletii112/workout-tracker.git](https://github.com/diegoletii112/workout-tracker.git)
    cd workout-tracker
    ```

2.  **Start the Database:**
    ```bash
    docker compose up -d db
    ```

3.  **Run the Application:**
    ```bash
    mvn spring-boot:run
    ```

4.  **Access the API:**
    The application will start at: `http://localhost:8080`

---

## 📖 API Documentation

You can test endpoints directly from the browser using Swagger UI.

👉 **URL:** [http://localhost:8080/swagger-ui/index.html](http://localhost:8080/swagger-ui/index.html)

### How to authenticate:
1.  Use the `POST /auth/login` endpoint with the demo credentials below.
2.  Copy the `token` string from the response body.
3.  Click the **Authorize** button (top right).
4.  Paste the token (value only, without quotes).

---

## 🔑 Demo Credentials

The database comes pre-seeded with two users:

| Role | Username | Password |
| :--- | :--- | :--- |
| **Admin** | `admin` | `admin123` |
| **User** | `user` | `user123` |

---

## 🧪 Testing

The project includes unit tests covering the business logic (Services) and data mapping (Mappers).

To run tests:
```bash
mvn test
```
## 📂 Project Structure
```Plaintext
src/main/java/portfolio/workout/tracker
├── config/          # Security and OpenAPI configuration
├── controllers/     # REST API Endpoints
├── dtos/            # Request/Response objects
├── mappers/         # Mapping logic (Entity <-> DTO)
├── models/          # Database Entities
├── repositories/    # JPA Interfaces
├── security/        # JWT authentication logic
└── services/        # Business logic
