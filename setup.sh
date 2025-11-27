#!/bin/bash
apt update -y && apt-get update -y && apt upgrade -y && apt install gem -y --fix-missing

tools=(
"gobuster" "ghex" "steghide" "yersinia" "amass" "aircrack-ng" "apktool"
"arping" "hping3" "beef-xss" "bloodhound" "bully" "cadaver" "cewl"
"0trace" "ltrace" "nuclei" "dirb" "dirsearch" "dirbuster" "netexec"
"crackmapexec" "evil-winrm" "crunch" "legion" "set" "recon-ng"
"theharvester" "ettercap-graphical" "dnsrecon" "sherlock" "maltego"
"radare2" "wafw00f" "subfinder" "spiderfoot" "macchanger" "foremost"
"stegcracker" "wfuzz" "enum4linux-ng" "dmitry" "socat"
"smtp-user-enum" "smbmap" "impacket-scripts" "medusa" "wine"
"gospider" "p0f" "davtest" "powersploit" "sslsplit" "sslstrip"
"zaproxy" "peass" "cloud-enum" "gophish" "httrack" "onesixtyone"
"wapiti" "whatweb" "webshells" "lbd" "ncrack" "tmux" "raven" "tinja" "fierce" 
"wpscan" "set" "fping" "dsniff" "dnschef" "masscan" "feroxbuster" "samdump2" "shellter" 
"spraykatz" "Wordlists" "pspy" "dmitry" "dumpzilla" "kerberoast" "neofetch" "hashid" 
"spooftooph" "ghidra" "remmina" "mimikatz" "commix")

for i in "${tools[@]}"; do
    echo "[+] Installing $i ..."
    apt install "$i" -y --fix-missing
done

wget "https://github.com/bee-san/RustScan/releases/download/2.4.1/rustscan.deb.zip"
unzip rustscan.deb.zip
dpkg -i rustscan_2.4.1-1_amd64.deb
rm rustscan.deb.zip rustscan_2.4.1-1_amd64.deb rustscan.tmp0-stripped
gem install haiti-hash
echo "neofetch --ascii_distro kali" >> ~/.zshrc

apt install python2 -y --fix-missing
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python2 get-pip.py
rm get-pip.py
pip2 --version

git clone "https://github.com/Screetsec/TheFatRat.git" && cd TheFatRat
chmod +x update && ./update && chmod +x setup.sh && ./setup.sh
mv TheFatRat /root
