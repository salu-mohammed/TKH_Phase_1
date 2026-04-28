# CLOUDNANO REMEDIATION PLAN
**Operator:** ## TOP 5 CRITICAL FIXES
*(From the 20 raw findings, select the 5 that pose the greatest ACTUAL risk. Explain your reasoning.)*

1. **Unauthenticated AWS S3 bucket**
   * **Justification:** It's internet-reachable and exposes customer data.

2. **Remote Code Excution in Apache Struts**
   * **Justification:** it allows full remote compromise with a wide range of exploits.

3. **SQL Injection in Login Page**
   * **Justification:** Direct path for account takeover or database extraction.

4. **Outdated PHP 5.4**
   * **Justification:** Exposed to the internet and has info-leak vulnerabilities.

5. **Cross-Site Scripting (XSS) on Support Forum**
   * **Justification:** Contains user-generated content that can lead to admin hijacking and/or phishing. 
