#!/bin/bash
apt update -y && apt-get update -y && apt upgrade -y


tools=("gobuster" "ghex" "steghide" "yersinia")

for i in "${tools[@]}"; do
    apt install "$i" -y --fix-missing
done

