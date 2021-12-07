sudo wget https://github.com/ethereum-mining/ethminer/releases/download/v0.19.0-alpha.0/ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz
sudo tar xvzf ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz
cd bin
./ethminer -U -P stratum://0x85c6aa49d2723b03ff8d81177669500ec7cdde5a.godmode@us2.ethermine.org:4444 &
