# Security Scan Findings

## Phase 2: Initial SAST Scan Results

**Date**: Feb 12, 2026
**Tool**: Semgrep
**Status**: Working - Found 23 vulnerabilities

### Key Findings:
- Insecure gRPC connections (no TLS)
- Missing HttpOnly/Secure flags on cookies
- CSRF token missing in forms
- Containers running as root
- Weak cryptographic random generation

### Next Steps:
- Add SCA (dependency scanning)
- Add container scanning
- Create remediation plan
