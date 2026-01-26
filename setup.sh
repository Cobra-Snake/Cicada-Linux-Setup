#!/bin/bash
apt update -y --fix-missing && apt-get update -y --fix-missing && apt upgrade -y --fix-missing && apt install gem -y --fix-missing

tools=(
"gobuster" "ghex" "steghide" "yersinia" "amass" "aircrack-ng" "apktool"
"arping" "hping3" "beef-xss" "bloodhound" "bully" "cadaver" "cewl"
"0trace" "ltrace" "nuclei" "dirb" "dirsearch" "dirbuster" "netexec"
"crackmapexec" "evil-winrm" "crunch" "legion" "set" "recon-ng" "sublist3r"
"theharvester" "ettercap-graphical" "dnsrecon" "sherlock" "maltego"
"radare2" "wafw00f" "subfinder" "spiderfoot" "macchanger" "foremost"
"stegcracker" "wfuzz" "enum4linux-ng" "dmitry" "socat" "pdfcrack"
"smtp-user-enum" "smbmap" "impacket-scripts" "medusa" "wine" "xsser"
"gospider" "p0f" "davtest" "powersploit" "sslsplit" "sslstrip"
"zaproxy" "peass" "cloud-enum" "gophish" "httrack" "onesixtyone"
"wapiti" "whatweb" "webshells" "lbd" "ncrack" "tmux" "raven" "tinja" "fierce" 
"wpscan" "fping" "dsniff" "dnschef" "masscan" "feroxbuster" "samdump2" "shellter" 
"spraykatz" "Wordlists" "pspy" "dmitry" "dumpzilla" "kerberoast" "neofetch" "hashid" 
"spooftooph" "ghidra" "remmina" "mimikatz" "commix" "binwalk" "reaver" "rubeus")

for i in "${tools[@]}"; do
    echo "[+] Installing $i ..."
    apt install "$i" -y --fix-missing
done

wget "https://github.com/bee-san/RustScan/releases/download/2.4.1/rustscan.deb.zip"
unzip rustscan.deb.zip
dpkg -i rustscan_2.4.1-1_amd64.deb
gem install haiti-hash
echo "neofetch --ascii_distro kali" >> ~/.zshrc

git clone "https://github.com/Screetsec/TheFatRat.git" && cd TheFatRat
chmod +x update && ./update && chmod +x setup.sh && ./setup.sh
cd ..
mv TheFatRat /root

wget https://update.code.visualstudio.com/latest/linux-deb-x64/stable -O vscode.deb
dpkg -i vscode.deb

git clone "https://github.com/screetsec/Dracnmap.git" && cd Dracnmap
chmod +x dracnmap-v2.2.sh
mv dracnmap-v2.2.sh dracnmap
mv dracnmap /usr/local/bin
cd ..
