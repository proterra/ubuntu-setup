sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible


#####

https://github.com/golang/go/wiki/Ubuntu
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go

setup go path
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

mkdir -p src/github.com/hyperledger 

git clone ssh://mbwhite@gerrit.hyperledger.org:29418/fabric-chaincode-node && scp -p -P 29418 mbwhite@gerrit.hyperledger.org:hooks/commit-msg fabric-chaincode-node/.git/hooks/
git clone ssh://mbwhite@gerrit.hyperledger.org:29418/fabric-chaincode-java && scp -p -P 29418 mbwhite@gerrit.hyperledger.org:hooks/commit-msg fabric-chaincode-java/.git/hooks/
git clone ssh://mbwhite@gerrit.hyperledger.org:29418/fabric-samples && scp -p -P 29418 mbwhite@gerrit.hyperledger.org:hooks/commit-msg fabric-samples/.git/hooks/
git clone ssh://mbwhite@gerrit.hyperledger.org:29418/fabric-sdk-node && scp -p -P 29418 mbwhite@gerrit.hyperledger.org:hooks/commit-msg fabric-sdk-node/.git/hooks/

sudo mount -t vboxsf vm1804 ~/host