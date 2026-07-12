#!/bin/bash
apt update -y --fix-missing && apt-get update -y --fix-missing && apt install gem -y --fix-missing && apt install libcompress-raw-lzma-perl -y --fix-missing && apt full-upgrade -y --fix-missing

tools=(
"dradis" "ghex" "steghide" "yersinia" "apktool" "krbrelayx" "pspy" "spraykatz"
"wifiphisher" "braa" "arping" "beef-xss" "sickle-pdk" "bopscrk" " kerberoast" 
"bloodhound" "bully" "cmseek" "gemini-cli" "chisel" "ligolo-ng" "legba" "penelope"
"ltrace" "nuclei" "dirsearch" "fastfetch" "backdoor-factory" "anew" 
"crackmapexec"  "crunch" "legion" "set" "sublist3r" "airgeddon" "gedit"
"ettercap-graphical"  "sherlock" "bloodyAD" "parsero" "shell-gpt"
"radare2" "subfinder" "foremost" "cupp" "hoaxshell" "arsenal-ng"
"stegcracker" "enum4linux-ng"  "pdfcrack" "nishang" "stegseek" "sstimap"
"impacket-scripts" "medusa" "wine" "xsser" "knock" "ligolo-ng" "code-oss"
"gospider" "p0f" "sslstrip" "joomscan" "hexstrike-ai" "ligolo-mp" "apache-users"
"zaproxy" "peass" "cloud-enum" "httrack" "onesixtyone" "info" "armitage" "veil" 
"tmux" "raven" "tinja" "rainbowcrack" "donut" "web-cache-vulnerability-scanner"
"feroxbuster" "shellter" "autorecon""wpprobe" "adaptixc2" "powercat" "ollydbg"
"sharphound" "uro" "dumpzilla" "hashrat" "shellfire" "villain" "sshuttle"  
"spraykatz" "wordlists" "pspy" "dumpzilla" "kerberoast" "windows-privesc-check" "shellnoob"
"ghidra" "remmina" "rubeus" "arjun" "sqlsus" "hamster-sidejack")

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
