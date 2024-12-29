# Sample-Beego Task App

A task management application demonstrating the implementation of a web application using the Beego framework, featuring REST API endpoints, Docker containerization, and seamless integration with Daytona development environments.

---

## 🚀 Getting Started

### Open Using Daytona

1. **Install Daytona**: Follow the [Daytona installation guide](https://www.daytona.io/docs/installation/installation/).
2. **Create the Workspace**:

   ```bash
   daytona create https://github.com/SxxAq/beego-sample

   ```

3. **Navigate to the Project Directory**:

```shellscript
cd beego-sample
```

4. **Start the Application**:

```shellscript
docker-compose up --build
```

5. **Access the Application**:
   Open your web browser and visit `http://localhost:8080`

---

## ✨ Features

- RESTful API implementation with Beego framework
- Task management system with CRUD operations
- Containerized development environment using Docker
- Standardized development setup with devcontainers
- Hot-reload capability for rapid development
- Responsive web interface with modern design
- Simple and intuitive task management interface
- Structured project layout following Beego conventions

---

## 🛠 Project Structure

```plaintext
.
├── .devcontainer/        # VS Code devcontainer configuration
├── conf/                 # Configuration files
│   └── app.conf         # Main application configuration
├── controllers/         # Application controllers
│   ├── main.go         # Main page controller
│   └── task.go         # Task API controller
├── views/              # Template files
│   └── index.tpl       # Main page template
├── docker-compose.yml  # Docker Compose configuration
├── Dockerfile         # Docker build instructions
└── main.go           # Application entry point
```

---

## 🔍 API Endpoints

The application exposes the following API endpoints:

- `GET /` - Main page with task management interface
- `GET /api/tasks` - Retrieve list of all tasks

---

## 📝 Development Notes

- Built with Go 1.21 and Beego v2.1.0
- Uses Docker for containerization
- Implements hot-reload for development efficiency
- Follows Beego's MVC architecture pattern
- Includes devcontainer configuration for standardized development

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- [Beego Documentation](https://beego.vip/docs/intro/)
- [Docker Documentation](https://docs.docker.com/)
- [Daytona](https://www.daytona.io/) for providing an excellent development environment manager

```plaintext

```

