# SecureFlow DevSecOps Implementation

## Overview
End-to-end security pipeline for Online Boutique microservices.

## Security Controls
- **SAST**: Semgrep (code vulnerabilities)
- **SCA**: Snyk + Dependabot (dependency scanning)
- **Container**: Trivy scanning + Cosign signing
- **IaC**: Checkov (Kubernetes manifest validation)
- **Runtime**: Falco (behavioral monitoring)
- **Policy**: OPA Gatekeeper (admission control)
- **DAST**: OWASP ZAP (application testing)

## Pipeline Stages
1. Code commit → SAST/SCA scan
2. Build → Container scan + sign
3. Deploy → Policy validation
4. Runtime → Security monitoring
5. Test → DAST scan
