# Phase 6: Dynamic Application Security Testing (DAST)

## Overview
Performed OWASP ZAP baseline scan on running Online Boutique application.

## Scan Details
- **Tool**: OWASP ZAP Baseline Scanner
- **Target**: http://192.168.49.2:31957
- **URLs Scanned**: 38
- **Scan Type**: Passive (non-invasive)

## Results Summary
- PASS: 55 security checks passed
- WARN: 12 security issues identified
- FAIL: 0 critical vulnerabilities

## Vulnerabilities Found

### High Priority Issues
1. **Absence of Anti-CSRF Tokens** [10202]
   - Impact: Cross-Site Request Forgery attacks possible
   - Affected: 5 URLs (/, /cart, /product pages)

2. **Cookie No HttpOnly Flag** [10010]
   - Impact: XSS can steal session cookies
   - Affected: 4 URLs

3. **Content Security Policy (CSP) Header Not Set** [10038]
   - Impact: No XSS protection
   - Affected: 5 URLs

4. **Cookie Poisoning** [10029]
   - Impact: Cookie manipulation attacks
   - Affected: /setCurrency endpoint

### Medium Priority Issues
5. Missing Anti-clickjacking Header [10020] - 5 instances
6. X-Content-Type-Options Header Missing [10021] - 5 instances
7. Cookie without SameSite Attribute [10054] - 4 instances
8. Permissions Policy Header Not Set [10063] - 5 instances

### Low Priority Issues
9. Sub Resource Integrity Attribute Missing [90003]
10. Insufficient Site Isolation Against Spectre [90004]
11. Storable and Cacheable Content [10049]
12. Session Management Response Identified [10112]

## Recommendations
1. Implement CSRF tokens in all forms
2. Set HttpOnly flag on session cookies
3. Add Content-Security-Policy headers
4. Enable X-Frame-Options for clickjacking protection
5. Set SameSite cookie attribute
6. Add X-Content-Type-Options: nosniff

## Reports Generated
- HTML Report: security/zap/zap-baseline-report.html
- JSON Report: security/zap/zap-baseline-report.json
