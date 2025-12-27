# Shodan Passive Reconnaissance Report  
## Domain: holbertonschool.com

---

## 1. Scope

The objective of this task is to gather as much passive information as possible about the domain **holbertonschool.com** using **Shodan**.  
The focus areas are:

- IP ranges associated with the domain
- Technologies and frameworks used across subdomains
- Hosting and infrastructure details

No active scanning was performed.

---

## 2. IP Ranges Identified

Based on Shodan results, **holbertonschool.com** infrastructure is hosted on **Amazon Web Services (AWS)**, specifically in **France**.

### Observed IP Addresses
Shodan reports **4 hosts** associated with the domain.

> These IPs belong to AWS public address space and may change over time.

### Hosting Provider
- **Organization:** Amazon Data Services France
- **Cloud Provider:** AWS
- **Region:** Europe (France)

---

## 3. Open Ports and Services

The following ports were identified across the hosts:

| Port | Service | Description |
|-----:|--------|-------------|
| 80   | HTTP   | Web traffic (unencrypted) |
| 443  | HTTPS  | Secure web traffic |

---

## 4. Technologies & Frameworks

### Web Server
- **nginx**

### Operating System
- **Ubuntu**

### Web Technologies Detected
- nginx (web server)
- Ubuntu (server OS)

These technologies appear consistently across multiple subdomains.

---

## 5. Subdomains & Web Applications

Shodan HTTP insights reveal multiple web-facing services:

### Website Titles Identified
- **301 Moved Permanently**
- **Holberton School Level2 Forum**

This suggests:
- Use of redirects (likely HTTP → HTTPS or canonical domain enforcement)
- Presence of a forum or internal learning platform

---

## 6. SSL / TLS Information

### Supported TLS Versions
- TLS 1.2
- TLS 1.3

This indicates modern encryption standards are in use.

### Fingerprints
- **JARM fingerprint:** Present
- **JA3S fingerprint:** Present

These fingerprints can be used for passive service identification and correlation.

---

## 7. Tags Identified by Shodan

- cloud
- edu-product

These tags confirm the platform’s educational purpose and cloud-based infrastructure.

---

## 8. Vulnerabilities

- **No known vulnerabilities reported by Shodan**

This does not guarantee the absence of vulnerabilities, only that none are publicly indexed.

---

## 9. Summary

- holbertonschool.com is hosted on **AWS (France region)**
- Uses **nginx** on **Ubuntu**
- Exposes standard web ports **80** and **443**
- Supports **TLS 1.2 and TLS 1.3**
- Multiple subdomains and web applications are present
- No publicly indexed vulnerabilities were found

---

## 10. Disclaimer

All information was collected using **passive reconnaissance techniques** via Shodan.  
No active scanning, exploitation, or intrusive actions were performed.

---

