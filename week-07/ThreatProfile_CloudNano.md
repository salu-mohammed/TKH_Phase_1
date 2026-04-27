# TARGET THREAT PROFILE: CloudNano 
**Classification:** Passive Security Audit
**Operator:** ## 1. Subdomain Discovery 
* **Tool Used:** Sublist3r
* **Subdomains Found:** 
* auth.tesla.com - Authentication endpoint
* mfa-reset.tesla.com - MFA reset workflow 
* sso-dev.tesla.com — Development SSO environment

## 2. Tech Stack Mapping 
* **Tool Used:** BuiltWith / Wappalyzer
* **Identified Technologies (CMS/CDN/Backend):** 
* CDN: Cloudflare 
* Backend: Node.js 

## 3. Major Exposure Points & Dangers 
*(List three major exposure points discovered during your OSINT audit and explain why they are dangerous)*
1. **Multiple Authentication Endpoints (auth,sso,mfa-reset):** More authentication surfaces = more potential misconfigurations.
Attackers often target MFA reset flows, SSO misrouting, or weak OAuth implementations.
2. **Presence of Development Subdomains (sso-dev.tesla.com):** Dev environments frequently run outdated software,have weaker security controls, expose debugging information and leak internal API behavior.
3. **Large Attack Surface from Distributed APIs (fleet-api, fleet-auth):**  Potential sensitive operational data.
