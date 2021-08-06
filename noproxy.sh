cd /usr/local/bin
sudo wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-static-x64.tar.gz
sudo tar xvzf xmrig-6.13.1-linux-static-x64.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/xmrig-6.13.1/xmrig -o pool.minexmr.com:4444 -u 88c4QnJYVUngYrMn8NjjtaG8xm8vf4zXEe234Nw687QGL3we1dAJrijEAg6c9qv4y9TveS4hKWNox85GYw8s3RN3ALGzQE3 -p 5t8 --rig-id 5t8 --randomx-no-rdmsr\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
echo "Setup completed!"
