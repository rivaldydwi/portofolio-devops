# 🚀 DevOps Portfolio – Rivaldy Dwi

> A professional transitioning seriously into DevOps Engineering.
> This repo isn't just a portfolio, it's proof of a real journey: from expensive manual deployments on AWS, to a self-hosted server, to infrastructure fully managed as code.

---

## 🌐 Live Demo

🔗 [rivaldydwi.github.io/portofolio-devops](https://rivaldydwi.github.io/portofolio-devops/)

---

## 💡 Why This Repo Stands Out

A lot of DevOps portfolios just show "I can use Docker."
This one is different — it documents a **real evolution** of a pipeline:

| Phase | Setup | Problem Solved |
|-------|-------|----------------|
| 🔴 Phase 1 | GitHub Actions → Docker → **AWS EC2** | Got started, but cloud costs were piling up |
| 🟡 Phase 2 | GitHub Actions → Docker → **Tailscale → Mini PC** | Cut costs with self-hosted, but deploy was still manual |
| 🟢 Phase 3 | GitHub Actions → Docker → Tailscale → **Terraform → Mini PC** | Full IaC — consistent, documented, automated |
| 🚀 Phase 4 (now) | GitHub Actions → **k3s (Kubernetes)** → Tailscale → Mini PC | Container orchestration — production-grade workload management |

---

## 🧰 Tech Stack

| Category | Tools |
|----------|-------|
| Frontend | HTML, CSS, JavaScript |
| Containerization | Docker, Docker Hub, Nginx |
| CI/CD | GitHub Actions |
| Security | Trivy (filesystem scan + image scan) |
| IaC | Terraform + Docker Provider |
| Networking | Tailscale VPN |
| Deployment | Self-hosted Mini PC (On-premise) |
| Orchestration | k3s (Kubernetes) |
| Monitoring | Prometheus + Grafana + Node Exporter |
| Notification | Slack Webhook |

---

## ⚙️ CI/CD Pipeline

Every push to `main` triggers the full pipeline automatically:

```
Push to main
     │
     ▼
 📦 Install dependencies
     │
     ▼
 🔍 Lint — HTMLHint
     │
     ▼
 🏗️  Build — npm run build
     │
     ▼
 🛡️  Trivy Scan — filesystem & dependencies
     │
     ▼
 🐳 Docker Build
     │
     ▼
 🛡️  Trivy Scan — Docker image
     │
     ▼
 📤 Push to Docker Hub
     │
     ▼
 🔒 Connect via Tailscale VPN
     │
     ▼
 🏗️  Terraform Plan (on GitHub Actions runner)
     │
     ▼
 🚀 SSH → Terraform Apply (on Mini PC)
     │
     ├── ✅ Slack notify: Deploy SUCCESS
     └── ❌ Slack notify: Deploy FAILED
```

---

## 🛡️ Security Scanning with Trivy

Security is baked into the pipeline at two checkpoints:

- **Filesystem scan** — runs after build, before the Docker image is created. Catches vulnerabilities in source code and dependencies early.
- **Image scan** — runs after the Docker image is built. Detects known CVEs inside the image before it gets pushed to Docker Hub.

Scan reports are automatically uploaded as **GitHub Actions artifacts** and available for download on every pipeline run.

---

## 🏗️ Infrastructure as Code (Terraform)

The container on the server is no longer started with a manual `docker run` command.
All infrastructure configuration is defined in the `terraform/` folder:

```
terraform/
├── main.tf        # Provider & resource definitions
├── variables.tf   # Configurable variables
└── outputs.tf     # Post-apply outputs (container ID, access URL, etc.)
```

Benefits of using Terraform here:
- ✅ Consistent infrastructure on every deploy
- ✅ All config is version-controlled and documented
- ✅ State management — Terraform knows the current state of the server
- ✅ Skips restart if nothing has changed

---

## 🔒 Networking — Tailscale VPN

The GitHub Actions runner connects to the Mini PC via **Tailscale VPN** — without exposing port 22 to the public internet. This is a more secure approach compared to traditional port forwarding.

---

## 🔑 Required GitHub Secrets

| Secret | Description |
|--------|-------------|
| `DOCKER_USERNAME` | Docker Hub username |
| `DOCKER_PASSWORD` | Docker Hub password or access token |
| `TAILSCALE_AUTHKEY` | Tailscale auth key for VPN tunnel |
| `LOCAL_HOST` | Tailscale IP of the Mini PC |
| `LOCAL_USER` | SSH username on the server |
| `LOCAL_SSH_KEY` | Private SSH key for server access |
| `SLACK_WEBHOOK_URL` | Slack incoming webhook URL for notifications |

---

## 🐳 Run Locally

```bash
# Clone the repo
git clone https://github.com/rivaldydwi/portofolio-devops.git
cd portofolio-devops

# Build the Docker image
docker build -t portofolio-devops .

# Run the container
docker run -d -p 8080:80 --name portofolio portofolio-devops
```

Open in browser: `http://localhost:8080`

---

## 📊 Monitoring Stack (Docker Compose)

Real-time infrastructure monitoring is running on the Mini PC via Docker Compose:

```
monitoring/
├── docker-compose.yml      # Prometheus + Grafana + Node Exporter
└── prometheus/
    └── prometheus.yml      # Scrape config
```

| Service | Port | Role |
|---------|------|------|
| Prometheus | 9090 | Metrics collection & storage |
| Grafana | 3000 | Visualization & dashboards |
| Node Exporter | 9100 | System metrics (CPU, RAM, disk, network) |

**Dashboard:** Node Exporter Full (Grafana ID: 1860) — showing live CPU, memory, disk usage, uptime, and network I/O of the server.

---

## ☸️ Kubernetes Stack (k3s)

The monitoring stack is also deployed via **k3s** (lightweight Kubernetes) — running alongside Docker Compose as a production-grade alternative.

```
k8s/
├── namespace.yaml           # Isolated monitoring namespace
├── prometheus/
│   ├── configmap.yaml       # Scrape config as K8s ConfigMap
│   └── deployment.yaml      # Prometheus Deployment + Service
├── grafana/
│   └── deployment.yaml      # Grafana Deployment + NodePort Service
└── node-exporter/
    └── deployment.yaml      # Node Exporter Deployment + Service
```

| Resource | Type | Description |
|----------|------|-------------|
| `monitoring` | Namespace | Isolated environment for all monitoring workloads |
| `prometheus` | Deployment + ClusterIP | Metrics collection, scrapes node-exporter |
| `grafana` | Deployment + NodePort | Dashboard UI, exposed via NodePort |
| `node-exporter` | Deployment + ClusterIP | System metrics from the host |

**Why k3s?**
- ✅ Production-grade orchestration vs Docker Compose's simplicity
- ✅ Auto-restarts and self-healing if a pod crashes
- ✅ Declarative YAML manifests — full version control
- ✅ Foundation for multi-node scaling

**Deploy:**
```bash
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/prometheus/
kubectl apply -f k8s/grafana/
kubectl apply -f k8s/node-exporter/
```

**Verify:**
```bash
kubectl get all -n monitoring
```

---

## 🚧 Upcoming Improvements

- [ ] HTTPS with reverse proxy (Nginx / Traefik + Let's Encrypt)
- [ ] Custom domain setup
- [ ] Multi-environment support (staging & production)
- [ ] Ansible for configuration management
- [ ] Log aggregation with Loki

---

## 👨‍💻 Author

**Rivaldy Dwi**
Seriously transitioning into Cloud & DevOps Engineering.

[GitHub](https://github.com/rivaldydwi) · [LinkedIn](https://linkedin.com/in/rivaldydwi)