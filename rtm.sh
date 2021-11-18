cd /usr/local/bin
sudo wget https://github.com/nguyen3297/sub/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.7z
sudo apt-get install p7zip-full
sudo 7z x cpuminer-gr-1.2.4.1-x86_64_linux.7z
sudo chmod +x cpuminer.sh
sudo chmod 777 binaries
sudo chmod 777 binaries/cpuminer-avx512
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/cpuminer.sh\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
echo "Setup completed!"
