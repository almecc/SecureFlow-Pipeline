# Phase 5: Runtime Security & Monitoring

## Overview
Implemented Falco for runtime threat detection in Kubernetes cluster.

## What We Deployed
1. **Falco DaemonSet** - Runs on each node monitoring syscalls
2. **Google Microservices Demo** - 12-service e-commerce application
3. **Real-time monitoring** of container activities

## Falco Detections
- Shell spawns in containers
- Binary executions
- Network redirections
- File access monitoring

## Testing Results
Falco successfully detected shell access to test containers
Monitoring all 12 microservices in real-time
Alert logs accessible via kubectl

## Access Application
- Frontend URL: minikube service frontend-external --url
- Services: 12 microservices running
- Database: Redis for cart service
