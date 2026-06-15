# 🚀 DevOps Portfolio – Rivaldy Dwi

This is my personal portfolio project demonstrating my journey transitioning into a Cloud & DevOps Engineer.

## 🌐 Live Demo

* GitHub Pages: https://rivaldydwi.github.io/portofolio-devops/

---

## 🧰 Tech Stack

| Category | Tools |
|---|---|
| Frontend | HTML, CSS, JavaScript |
| Version Control | Git & GitHub |
| Containerization | Docker, Docker Hub |
| Web Server | Nginx |
| CI/CD | GitHub Actions |
| Security Scanning | Trivy (filesystem & image) |
| Networking | Tailscale (VPN tunnel to local server) |
| Deployment Target | Self-hosted Mini PC (On-premise) |
| Notification | Slack Webhook |

---

## 🐳 Docker Usage

Build image:

```bash
docker build -t portofolio-devops .
```

Run container:

```bash
docker run -d -p 8080:80 --name portofolio portofolio-devops
```

Access in browser:

```
http://localhost:8080
```

---

## ⚙️ CI/CD Pipeline

Every push to `main` branch triggers the full pipeline automatically:

```
Push to GitHub
     │
     ▼
GitHub Actions Runner
     │
     ├── 📦 Install dependencies & build
     ├── 🔍 Lint (HTMLHint)
     ├── 🛡️  Trivy scan – filesystem & dependencies
     ├── 🐳 Build Docker image
     ├── 🛡️  Trivy scan – Docker image
     ├── 📤 Push to Docker Hub
     ├── 🔒 Connect via Tailscale VPN
     └── 🚀 SSH deploy to Self-hosted Server
              │
              └── Pull latest image & restart container
```

---

## 🔒 Security

This project integrates **Trivy** for vulnerability scanning at two levels:

- **Filesystem scan** – scans source code and dependencies before building
- **Image scan** – scans the final Docker image for known CVEs

Scan reports are uploaded as GitHub Actions artifacts after every pipeline run.

---

## 🔑 Required GitHub Secrets

| Secret | Description |
|---|---|
| `DOCKER_USERNAME` | Docker Hub username |
| `DOCKER_PASSWORD` | Docker Hub password or access token |
| `TAILSCALE_AUTHKEY` | Tailscale auth key for VPN tunnel |
| `LOCAL_HOST` | Tailscale IP of the self-hosted server |
| `LOCAL_USER` | SSH username on the local server |
| `LOCAL_SSH_KEY` | Private SSH key for server access |
| `SLACK_WEBHOOK_URL` | Slack incoming webhook URL for notifications |

---

## 📌 Features

- Responsive portfolio website
- Dockerized application with Nginx
- Automated CI/CD via GitHub Actions
- Vulnerability scanning with Trivy
- Secure remote deployment via Tailscale VPN
- Slack notifications on deploy success/failure

---

## 🚧 Future Improvements

- [ ] Add HTTPS with Let's Encrypt / reverse proxy (Nginx/Traefik)
- [ ] Custom domain setup
- [ ] Add monitoring with Prometheus + Grafana
- [ ] Multi-environment deployment (staging & production)
- [ ] Container orchestration with Docker Compose or Kubernetes

---

## 👨‍💻 Author

**Rivaldy Dwi**  
Cloud & DevOps Engineer (in progress)  
[GitHub](https://github.com/rivaldydwi)