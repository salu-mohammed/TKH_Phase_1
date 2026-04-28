# TITANCORP: PERIMETER ASSESSMENT REPORT
**Operator:** **Target Subnet:** 172.88.0.0/24

## PHASE 1: ACTIVE ENUMERATION (NMAP)
*(List the live IPs discovered and their running services/versions)*
* **Host 1 (172.88.0.1):** Service: ssh, Version: OpenSSH 9.6p1 Ubuntu 3ubuntu13.15 (Ubuntu Linux; protocol 2.0) & 
Service http, Version: Apache httpd 2.4.58 ((Ubuntu))
* **Host 2 (172.88.0.15]):** N/A
* **Host 3 (172.88.0.20]):** Service: http, Version: Apache httpd 2.4.66 ((Unix))

## PHASE 2: VULNERABILITY AUDIT (NIKTO)
*(Run Nikto against the TWO web servers discovered above. List one major finding for each.)*
* **Web Server 1 Finding:** Missing X-Frame-Options header (clickjacking risk)
* **Web Server 2 Finding:** HTTPTRACE method enabled (XST vulnerability)

## PHASE 3: RISK TRIAGE
*(Review your findings. Identify the SINGLE highest-risk vulnerability across the entire DMZ. Justify why it is the top priority using the Likelihood x Impact formula.)*

* **Top Priority Remediation:**  HTTPTRACE method enabled on 172.88.0.20
* **Justification:** Easily exploitable by remote attackers and can lead to credential disclosure or session compromise.



