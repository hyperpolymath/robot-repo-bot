# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 0.1.x   | :white_check_mark: |

## Reporting a Vulnerability

**Security Contact:** jonathan.jewell@open.ac.uk

To report a security vulnerability:

1. **DO NOT** open a public GitHub issue for security vulnerabilities
2. Email the security contact directly with:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact assessment
   - Any suggested fixes (optional)

3. You can expect:
   - Initial response within 72 hours
   - Status updates every 7 days
   - Credit in security advisories (unless you prefer anonymity)

## Security Standards

This repository follows RSR (Rhodium Standard Repository) security requirements:

- **Cryptography**: SHA256+ only (no MD5/SHA1 for security purposes)
- **Transport**: HTTPS only (no plain HTTP)
- **Secrets**: Environment variables only (no hardcoded credentials)
- **Dependencies**: SHA-pinned GitHub Actions, Dependabot enabled
- **Scanning**: TruffleHog secret scanning, CodeQL SAST, OSSF Scorecard

## Security CI/CD

The following security checks run on every push/PR:

- `secret-scanner.yml` - Blocks hardcoded secrets
- `security-policy.yml` - Enforces crypto/transport standards
- `codeql.yml` - Static application security testing
- `scorecard.yml` - OSSF security scorecard
