#!/bin/bash
apt update -y --fix-missing && apt-get update -y --fix-missing && apt install gem -y --fix-missing && apt install libcompress-raw-lzma-perl -y --fix-missing && apt full-upgrade -y --fix-missing

tools=(
"dradis" "ghex" "steghide" "yersinia" "apktool" "krbrelayx" "spraykatz"
"wifiphisher" "braa" "arping" "beef-xss" "sickle-pdk" "bopscrk" "penelope"
"bloodhound" "bully" "cmseek" "gemini-cli" "chisel" "ligolo-ng" "legba" 
"ltrace" "nuclei" "dirsearch" "fastfetch" "backdoor-factory" "apache-users"
"crackmapexec"  "crunch" "legion" "set" "sublist3r" "airgeddon" "ismtp"
"ettercap-graphical"  "sherlock" "bloodyad" "parsero" "shell-gpt"
"radare2" "subfinder" "foremost" "cupp" "hoaxshell" "arsenal-ng" "dnscat2"
"stegcracker" "enum4linux-ng"  "pdfcrack" "nishang" "stegseek" "gedit"
"impacket-scripts" "medusa" "wine" "xsser" "knocked" "ligolo-ng" "code-oss"
"gospider" "p0f" "sslstrip" "joomscan" "hexstrike-ai" "ligolo-mp" "pspy" 
"zaproxy" "httrack" "onesixtyone" "info" "armitage" "veil" "ollydbg"
"tmux" "raven" "tinja" "rainbowcrack" "donut" "web-cache-vulnerability-scanner"
"feroxbuster" "shellter" "autorecon" "wpprobe" "adaptixc2" "powercat" 
"sharphound" "uro" "hashrat" "shellfire" "villain" "sshuttle" "sstimap"
"spraykatz" "wordlists" "dumpzilla" "kerberoast" "windows-privesc-check"
"ghidra" "remmina" "rubeus" "arjun" "sqlsus" "hamster-sidejack" "shellnoob")

for i in "${tools[@]}"; do
    echo "[+] Installing $i ..."
    apt install "$i" -y --fix-missing
done

wget "https://github.com/bee-san/RustScan/releases/download/2.4.1/rustscan.deb.zip"
unzip rustscan.deb.zip
dpkg -i rustscan_2.4.1-1_amd64.deb
gem install haiti-hash
echo "fastfetch --logo kali" >> ~/.zshrc
echo "fastfetch --logo kali" >> /root/.zshrc

wget "https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64"
mv kerbrute_linux_amd64 kerbrute && chmod +x kerbrute
mv kerbrute /usr/local/bin

git clone https://github.com/utoni/ptunnel-ng.git
apt install automake autoconf -y --fix-missing
cd ptunnel-ng
sed -i '$s/.*/LDFLAGS=-static "${NEW_WD}\/configure" --enable-static $@ \&\& make clean \&\& make -j${BUILDJOBS:-4} all/' autogen.sh
./autogen.sh
cd src && mv prunnel-ng /usr/local/bin
cd ../..

git clone https://github.com/Cryilllic/Active-Directory-Wordlists.git
mv Active-Directory-Wordlists /usr/share/wordlists

go install -v github.com/musana/cf-hero/cmd/cf-hero@latest
mv ~/go/bin/cf-hero /usr/local/bin
go install -v github.com/PentestPad/subzy@latest
mv ~/go/bin/subzy /usr/local/bin
go install -v github.com/tomnomnom/anew@latest
mv ~/go/bin/anew /usr/local/bin

cd /root
git clone "https://github.com/Screetsec/TheFatRat.git" && cd TheFatRat
chmod +x update && ./update && chmod +x setup.sh && ./setup.sh

cd /usr/share/nishang/ && git clone https://github.com/411Hall/JAWS.git
cd JAWS && rm LICENSE README.md
cd ~/

apt upgrade -y --fix-missing
apt autoremove -y --fix-missing
