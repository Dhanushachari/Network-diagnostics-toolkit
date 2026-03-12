# 🌐 Network Diagnostics Toolkit

A collection of **PowerShell-based network troubleshooting tools** designed for diagnosing connectivity problems in Windows environments.

This toolkit simulates real-world tasks performed by **IT Support Engineers and Infrastructure Administrators** when investigating network incidents such as connectivity failures, DNS problems, VPN issues, and blocked service ports.

---

# 🧰 Toolkit Features

This repository contains automation scripts that help diagnose common network problems.

✔ Network reachability testing  
✔ DNS resolution diagnostics  
✔ DHCP and IP configuration inspection  
✔ VPN connectivity verification  
✔ Service port availability testing  

These tools are useful when troubleshooting issues such as:

• Users unable to access internal servers  
• Internet connectivity failures  
• DNS lookup problems  
• VPN connection failures  
• Firewall blocking service ports  

---

# 🏗 Repository Structure

```
network-diagnostics-toolkit
│
├── ping-tools
│     ping-sweep.ps1
│     latency-test.ps1
│
├── dns-diagnostics
│     dns-resolution-check.ps1
│     dns-server-test.ps1
│
├── dhcp-tools
│     check-ip-config.ps1
│     dhcp-lease-info.ps1
│
├── vpn-diagnostics
│     vpn-connectivity-test.ps1
│     public-ip-check.ps1
│
├── port-tests
│     port-connectivity-test.ps1
│     common-service-port-test.ps1
│
├── screenshots
│
└── README.md
```

---

# 🔍 Toolkit Modules

## 📡 Ping Tools

Scripts used to verify **basic network reachability and latency**.

**ping-sweep.ps1**

Scans a subnet and identifies active hosts responding to ICMP requests.

**latency-test.ps1**

Measures response time to a remote host to detect network delays.

---

## 🌍 DNS Diagnostics

Scripts used to diagnose **DNS resolution problems**.

**dns-resolution-check.ps1**

Tests whether a hostname resolves correctly using the configured DNS servers.

**dns-server-test.ps1**

Checks connectivity to DNS servers and verifies port 53 availability.

---

## 📶 DHCP Tools

Scripts used to inspect **IP configuration and DHCP settings**.

**check-ip-config.ps1**

Displays IP address, subnet mask, gateway, and DNS configuration for network adapters.

**dhcp-lease-info.ps1**

Shows DHCP lease status and verifies whether DHCP is enabled.

---

## 🔐 VPN Diagnostics

Scripts used to troubleshoot **VPN connectivity issues**.

**vpn-connectivity-test.ps1**

Tests connectivity to a VPN gateway server.

**public-ip-check.ps1**

Retrieves the current public IP address to verify network routing or VPN tunneling.

---

## 🔌 Port Tests

Scripts used to check **service port accessibility**.

**port-connectivity-test.ps1**

Tests whether a specific port on a remote host is reachable.

**common-service-port-test.ps1**

Scans commonly used service ports such as HTTP, HTTPS, RDP, and DNS.

---

# 💻 Example Use Case

An IT support engineer troubleshooting a connectivity issue might perform steps like:

1️⃣ Verify network reachability using ping sweep  
2️⃣ Test DNS resolution for affected services  
3️⃣ Inspect DHCP configuration and IP assignment  
4️⃣ Verify VPN connectivity for remote users  
5️⃣ Check if application service ports are accessible  

This toolkit automates these diagnostics using **PowerShell scripts designed for Windows environments**.

---

# 🧩 Technologies Used

Windows PowerShell  
Windows Networking Utilities  
ICMP / TCP Connectivity Testing  
DNS Resolution Tools  

---

# 📸 Screenshots

Screenshots demonstrating script execution and troubleshooting scenarios will be added here.

Example screenshots may include:

• Ping sweep results  
• DNS resolution test output  
• DHCP configuration inspection  
• Port connectivity test results  

---

# 🎯 Skills Demonstrated

Network Troubleshooting  
PowerShell Automation  
Connectivity Diagnostics  
DNS and DHCP Analysis  
VPN Connectivity Investigation  

---

# 👨‍💻 Author

**Dhanush Achari**

IT Support Engineer | Windows Systems | Infrastructure Troubleshooting
