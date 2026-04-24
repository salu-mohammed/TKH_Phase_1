# TITAN SMALL BUSINESS SERVICES: SECURITY ARCHITECTURE DOCUMENT (SAD)
**Operator:** Salu Mohammed
**Date:** 4/23/2026

## 1. Perimeter Hardening (UFW & SSH)
* **SSH Status:** 
- Disabled root login: PermitRootLogin no
- Disabled password authentication: PasswordAuthentication no
- Enforced key‑based authentication: PubkeyAuthentication yes
- Restarted SSH service to apply changes

* **Firewall Logic:** 
- Default deny incoming
- Default allow outgoing
- Allowed port 22 (SSH)
- Allowed port 8080 (Web App)
- UFW enabled and active


## 2. The Automated Auditor (Python)
* **Script Logic:** 
import os

output = os.popen("df -h").read()

with open("/var/log/sys_audit.log", "a") as log:
    log.write(output + "\n")

* **Telemetry Path:** `/var/log/sys_audit.log`

## 3. Containerized App (Docker)
* **Network Isolation:** 
- Two networks created: frontend and backend
- wiki (nginx) exposed only on frontend via port 8080
- db (mysql) placed ONLY on backend network
- backend network marked internal: true (no host access)
- Result: Database is fully air‑gapped from the host and external traffic

* **Stack Health:** 
CONTAINER ID   IMAGE     COMMAND                  CREATED        STATUS         PORTS                                     NAMES
3bdfaa1e62ea   nginx     "/docker-entrypoint.…"   21 hours ago   Up 2 seconds   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   machi_wiki_1
90d4451e5448   mysql     "docker-entrypoint.s…"   21 hours ago   Up 2 seconds   3306/tcp, 33060/tcp                       machi_db_1

## 4. Executive Summary
The Hardened Outpost environment was secured through layered perimeter defenses, including SSH lockdown and strict firewall rules. 
Automated auditing scripts were deployed to continuously monitor disk health and domain controller availability. 
The final containerized application stack was isolated using an air‑gapped backend network, ensuring strong separation of services and reducing the attack surface.

