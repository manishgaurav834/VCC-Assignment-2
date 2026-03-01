# Cloud Auto-Scaling & Security (Assignment 2)
**Student:** Gaurav Manish (B22CS079)  
**Project:** `Assignment2VCC`

## 🎯 Overview
This project implements a high-availability web architecture on Google Cloud Platform (GCP). It features an automated scaling mechanism to handle traffic spikes and a hardened security configuration based on the Principle of Least Privilege.

## 🏗️ Architecture
- **Infrastructure:** Managed Instance Group (MIG) using `e2-micro` instances.
- **Automation:** Startup scripts for zero-touch Apache2 deployment.
- **Scaling:** Dynamic horizontal scaling triggered at **60% CPU utilization** (Min: 1, Max: 3).
- **Network Security:** VPC Firewall rules restricting all ingress except **TCP Port 80**.
- **IAM Security:** RBAC implementation with `manishgaurav834@gmail.com` assigned as **Compute Viewer**.



## 🛠️ Key Commands
### Startup Script
```bash
#! /bin/bash
apt-get update && apt-get install -y apache2
echo "Server Hostname: $(hostname)" > /var/www/html/index.html
```
### Stress Test Script
```bash
sudo apt-get install stress -y
sudo stress --cpu 1 --timeout 600
