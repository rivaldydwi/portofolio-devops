# 🚀 DevOps Portfolio – Rivaldy Dwi Satria

Personal portfolio project demonstrating my journey transitioning into Cloud & DevOps Engineering — built with a production-grade CI/CD pipeline using GitHub Actions, self-hosted on a local Mini PC server.

🌐 **Live Demo:** [https://export-shipments-across-collar.trycloudflare.com](https://export-shipments-across-collar.trycloudflare.com)

---

## 🧰 Tech Stack

| Category | Tools |
|---|---|
| App | HTML, CSS, JavaScript |
| Containerization | Docker, Nginx |
| CI/CD | GitHub Actions |
| Security | Trivy (filesystem & image scan) |
| Registry | Docker Hub |
| Networking | Tailscale, Cloudflare Tunnel |
| Server | Mini PC (self-hosted, Ubuntu) |
| Notifications | Slack Webhook |

---

## ⚙️ CI/CD Pipeline

Every push to `main` automatically triggers the full pipeline:

```
Code → Lint → Build → Trivy FS Scan → Docker Build → Trivy Image Scan → Push → Deploy → Notify
```

| Step | Tool | Description |
|---|---|---|
| Lint | HTMLHint | Validate HTML code quality |
| Build | npm | Minify assets to `dist/` |
| Filesystem Scan | Trivy | Scan source code & dependencies for CVEs |
| Docker Build | Docker | Build image from `dist/` via Nginx Alpine |
| Image Scan | Trivy | Scan Docker image for vulnerabilities |
| Push | Docker Hub | Push image to registry |
| Connect | Tailscale | GitHub Actions runner joins local network |
| Deploy | SSH + Docker | Pull & run latest image on local Mini PC |
| Notify | Slack | Real-time success/failure notification |

---

## 🏗️ Architecture

```
Developer (push to GitHub)
         │
         ▼
┌─────────────────────────────────────┐
│         GitHub Actions              │
│                                     │
│  Lint → Build → Trivy Scan          │
│         │                           │
│  Docker Build → Trivy Image Scan    │
│         │                           │
│  Push to Docker Hub                 │
│         │                           │
│  Connect via Tailscale              │
│         │                           │
│  SSH → Deploy to Mini PC            │
│         │                           │
│  Slack Notification                 │
└─────────────────────────────────────┘
         │
         ▼
┌─────────────────────────────────────┐
│     Mini PC (Ubuntu, self-hosted)   │
│                                     │
│  Docker container (Nginx)           │
│  Cloudflare Tunnel                  │
│  → public HTTPS, zero open ports   │
└─────────────────────────────────────┘
```

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

## 🔧 GitHub Secrets Required

| Secret | Description |
|---|---|
| `DOCKER_USERNAME` | Docker Hub username |
| `DOCKER_PASSWORD` | Docker Hub password |
| `TAILSCALE_AUTHKEY` | Tailscale auth key (ephemeral + reusable) |
| `LOCAL_HOST` | Tailscale IP of Mini PC |
| `LOCAL_USER` | SSH username on Mini PC |
| `LOCAL_SSH_KEY` | Private SSH key for Mini PC access |
| `SLACK_WEBHOOK_URL` | Slack incoming webhook URL |

---

## 👨‍💻 Author

**Rivaldy Dwi Satria** — IT Infrastructure professional transitioning to Cloud & DevOps

📧 rivaldydwisatria@gmail.com
📍 Tokyo, Japan
🐙 [github.com/rivaldydwi](https://github.com/rivaldydwi)

---

*Still learning, but getting closer to real-world DevOps every day.*
