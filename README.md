# poc-uptime-kuma

Proof of concept for **Building a Self-Hosted Monitoring Stack with Uptime Kuma and Grafana**.

Live demo: https://uptime-kuma.poc.ardotconsulting.com/status/kuma

Blog post: https://www.ardotconsulting.com/blog/2026/10/24/self-hosted-monitoring-stack-uptime-kuma-grafana-replace-statuspage-and-datadog/

## What

[Uptime Kuma](https://github.com/louislam/uptime-kuma) is a self-hosted uptime monitor with a built-in status page. It runs as a single container using SQLite — no external database required.

## Run locally

```bash
docker build -t uptime-kuma-poc .
docker run -d -p 3001:3001 uptime-kuma-poc
```

Open http://localhost:3001 to access the dashboard.
