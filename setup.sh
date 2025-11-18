#!/bin/bash
apt update -y && apt-get update -y && apt upgrade -y


tools=("gobuster" "ghex" "steghide" "yersinia" "amass" "aircrack-ng" "apktool" "arping" "hping3" "beef-xss" "bloodhound" "bully" "cadaver" "cewl" "0trace" "ltrace" "nuclei" "dirb" "dirsearch" "dirbuster" "netexec" "crackmapexec" "evil-winrm" "crunch" "legion" "set" "recon-ng" "theharvester" "ettercap" "dnsrecon" "sherlock" "maltego" "radare2" "wafw00f" "subfinder" "spiderfoot" "macchanger" "foremost" "stegcracker" "wfuzz" "enum4linux-ng" "dmitry" "socat" "smtp-user-enum" "smbmap" "impacket" "medusa" "wine" "gospider" "p0f" "davtest" "powersploit" "sslsplit" "sslstrip" "zaproxy" "peass-ng" "cloud-enum" "gophish" "httrack" "onesixtyone" "wapiti" "whatweb" "webshells" "lbd" "ncrack" "tmux" "raven" "tinja" "fierce") 

for i in "${tools[@]}"; do
    apt install "$i" -y --fix-missing
done

wget "https://github.com/bee-san/RustScan/releases/download/2.4.1/rustscan.deb.zip"
dpkg -i rustscan.deb
