#!/bin/bash
apt update -y --fix-missing && apt-get update -y --fix-missing && apt install gem -y --fix-missing && apt install libcompress-raw-lzma-perl -y --fix-missing && apt full-upgrade -y --fix-missing

tools=(
"dradis" "ghex" "steghide" "yersinia" "amass" "aircrack-ng" "apktool" "krbrelayx" "pspy" "spraykatz"
"wifiphisher" "braa" "arping" "hping3" "beef-xss" "sickle-pdk" "bopscrk" " kerberoast" "apache-users"
"bloodhound" "bully" "cadaver" "cewl" "cmseek" "gemini-cli" "chisel" "ligolo-ng" "legba" "penelope"
"ltrace" "nuclei" "dirb" "dirsearch" "dirbuster" "netexec" "fastfetch" "backdoor-factory" "anew" 
"crackmapexec"  "crunch" "legion" "set" "recon-ng" "sublist3r" "airgeddon" "gedit""adaptixc2" "powercat"
"theharvester" "ettercap-graphical" "dnsrecon" "sherlock" "maltego" "bloodyAD" "parsero" "shell-gpt"
"radare2" "wafw00f" "subfinder" "spiderfoot" "macchanger" "foremost" "cupp" "hoaxshell" "arsenal-ng"
"stegcracker" "wfuzz" "enum4linux-ng" "dmitry" "socat" "pdfcrack" "nishang" "stegseek" "sstimap"
"smtp-user-enum" "smbmap" "impacket-scripts" "medusa" "wine" "xsser" "knock" "ligolo-ng" "code-oss"
"gospider" "p0f" "davtest" "powersploit" "sslsplit" "sslstrip" "joomscan" "hexstrike-ai" "ligolo-mp"
"zaproxy" "peass" "cloud-enum" "gophish" "httrack" "onesixtyone" "info" "armitage" "veil" "ollydbg"
"wapiti" "whatweb" "webshells" "lbd" "ncrack" "tmux" "raven" "tinja" "fierce" "rainbowcrack" "donut"
"wpscan" "fping" "dsniff" "dnschef" "masscan" "feroxbuster" "samdump2" "shellter" "autorecon""wpprobe" 
"sharphound" "uro" "dumpzilla" "hashrat" "shellfire" "villain" "sshuttle"  "web-cache-vulnerability-scanner"
"spraykatz" "wordlists" "pspy" "dmitry" "dumpzilla" "kerberoast" "hashid" "windows-privesc-check" "shellnoob"
"spooftooph" "ghidra" "remmina" "mimikatz" "commix" "binwalk" "reaver" "rubeus" "arjun" "sqlsus" "hamster-sidejack")

for i in "${tools[@]}"; do
    echo "[+] Installing $i ..."
    apt install "$i" -y --fix-missing
done

wget "https://github.com/bee-san/RustScan/releases/download/2.4.1/rustscan.deb.zip"
unzip rustscan.deb.zip
dpkg -i rustscan_2.4.1-1_amd64.deb
gem install haiti-hash
echo "fastfetch --logo kali" >> ~/.zshrc

wget "https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64"
mv kerbrute_linux_amd64 kerbrute && chmod +x kerbrute
mv kerbrute /usr/local/bin

git clone https://github.com/Cryilllic/Active-Directory-Wordlists.git
mv Active-Directory-Wordlists /usr/share/wordlists

go install -v github.com/musana/cf-hero/cmd/cf-hero@latest
go install -v github.com/PentestPad/subzy@latest

cd /root
git clone "https://github.com/Screetsec/TheFatRat.git" && cd TheFatRat
chmod +x update && ./update && chmod +x setup.sh && ./setup.sh

cd /usr/share/nishang/ && git clone https://github.com/411Hall/JAWS.git
cd JAWS && rm LICENSE README.md
cd ~/Cicada-Linux-Setup

apt upgrade -y --fix-missing
apt autoremove -y --fix-missing
