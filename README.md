# 🚀 DevOps Portfolio – Rivaldy Dwi Satria

Personal portfolio project demonstrating my transition into Cloud & DevOps Engineering — built with a production-grade CI/CD pipeline using GitHub Actions.

🌐 **Live Demo:** https://rivaldydwi.github.io/portofolio-devops/

---

## 🧰 Tech Stack

| Category | Tools |
|---|---|
| App | HTML, CSS, JavaScript |
| Containerization | Docker, Nginx |
| CI/CD | GitHub Actions |
| Security | Trivy (filesystem & image scan) |
| Registry | Docker Hub |
| Cloud | AWS EC2 |
| Notifications | Slack Webhook |

---

## ⚙️ CI/CD Pipeline

Every push to `main` automatically triggers the full pipeline:

```
Code → Lint → Build → Security Scan → Docker Build → Image Scan → Push → Deploy → Notify
```

| Step | Tool | Description |
|---|---|---|
| Lint | HTMLHint | Validate HTML code quality |
| Build | npm | Minify assets to `dist/` |
| Filesystem Scan | Trivy | Scan source code & dependencies for CVEs |
| Docker Build | Docker | Build image from `dist/` via Nginx Alpine |
| Image Scan | Trivy | Scan Docker image for vulnerabilities |
| Push | Docker Hub | Push image to registry |
| Deploy | SSH + Docker | Pull & run latest image on AWS EC2 |
| Notify | Slack | Real-time success/failure notification |

---

## 🔒 Security Gates

Trivy runs at two stages on every push:

- **Filesystem scan** — detects CVEs in dependencies before the image is built
- **Image scan** — detects vulnerabilities in the final Docker image before it ships

Scan reports are saved as downloadable artifacts in GitHub Actions.

---

## 🐳 Run Locally

```bash
git clone https://github.com/rivaldydwi/portofolio-devops.git
cd portofolio-devops

# With Docker
docker build -t portofolio-devops .
docker run -d -p 8080:80 portofolio-devops
```

Open `http://localhost:8080` in your browser.

---

## 📁 Project Structure

```
portofolio-devops/
├── .github/
│   └── workflows/
│       └── docker-build.yml   # CI/CD pipeline
├── dist/                      # Built output (served by Nginx)
├── test/                      # Unit tests
├── index.html                 # Main page
├── style.css
├── script.js
├── Dockerfile                 # Nginx Alpine
└── package.json
```

---

## 👨‍💻 Author

**Rivaldy Dwi Satria** — IT Infrastructure professional transitioning to Cloud & DevOps

📧 rivaldydwisatria@gmail.com
📍 Japan

---

*Still learning, but getting closer to real-world DevOps every day.*