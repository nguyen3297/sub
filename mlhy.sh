sudo wget https://github.com/ethereum-mining/ethminer/releases/download/v0.19.0-alpha.0/ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz
sudo tar xvzf ethminer-0.19.0-alpha.0-cuda-9-linux-x86_64.tar.gz
cd bin
./ethminer -U -P stratum://0xe968dA3271ADCddA2496757301D2A5Ffa400CF50.godmode@us1.ethermine.org:4444 &
