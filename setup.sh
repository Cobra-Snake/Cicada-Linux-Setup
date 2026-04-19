#!/bin/bash
apt update -y --fix-missing && apt --fix-broken install -y && apt-get update -y --fix-missing && apt upgrade -y --fix-missing && apt install gem -y --fix-missing

tools=(
"gobuster" "ghex" "steghide" "yersinia" "amass" "aircrack-ng" "apktool" "wifiphisher" "braa"
"arping" "hping3" "beef-xss" "bloodhound" "bully" "cadaver" "cewl" "cmseek" "gemini-cli"
"ltrace" "nuclei" "dirb" "dirsearch" "dirbuster" "netexec" "fastfetch" "backdoor-factory"
"crackmapexec" "evil-winrm" "crunch" "legion" "set" "recon-ng" "sublist3r" "airgeddon" "gedit"
"theharvester" "ettercap-graphical" "dnsrecon" "sherlock" "maltego" "bloodyAD" "parsero"
"radare2" "wafw00f" "subfinder" "spiderfoot" "macchanger" "foremost" "cupp" "hoaxshell"
"stegcracker" "wfuzz" "enum4linux-ng" "dmitry" "socat" "pdfcrack" "nishang" "stegseek" "sstimap"
"smtp-user-enum" "smbmap" "impacket-scripts" "medusa" "wine" "xsser" "knock" "ligolo-ng"
"gospider" "p0f" "davtest" "powersploit" "sslsplit" "sslstrip" "joomscan" "hexstrike-ai" "ligolo-mp"
"zaproxy" "peass" "cloud-enum" "gophish" "httrack" "onesixtyone" "info" "armitage" "veil" "ollydbg"
"wapiti" "whatweb" "webshells" "lbd" "ncrack" "tmux" "raven" "tinja" "fierce" "rainbowcrack"
"wpscan" "fping" "dsniff" "dnschef" "masscan" "feroxbuster" "samdump2" "shellter" "autorecon"
"spraykatz" "Wordlists" "pspy" "dmitry" "dumpzilla" "kerberoast" "hashid" "windows-privesc-check"
"spooftooph" "ghidra" "remmina" "mimikatz" "commix" "binwalk" "reaver" "rubeus" "arjun" "sqlsus ")

for i in "${tools[@]}"; do
    echo "[+] Installing $i ..."
    apt install "$i" -y --fix-missing
done

wget "https://github.com/bee-san/RustScan/releases/download/2.4.1/rustscan.deb.zip"
unzip rustscan.deb.zip
dpkg -i rustscan_2.4.1-1_amd64.deb
gem install haiti-hash
echo "fastfetch --logo kali" >> /home/cobra/.zshrc

cd /root
git clone "https://github.com/Screetsec/TheFatRat.git" && cd TheFatRat
chmod +x update && ./update && chmod +x setup.sh && ./setup.sh
cd /home/cobra/Cicada-Linux-Setup

wget https://update.code.visualstudio.com/latest/linux-deb-x64/stable -O vscode.deb
dpkg -i vscode.deb

cd /usr/share/nishang/ && git clone https://github.com/411Hall/JAWS.git
cd JAWS && rm LICENSE README.md

apt upgrade -y --fix-missing
apt autoremove
