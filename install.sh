#Do this first!
#curl -O -J  https://raw.githubusercontent.com/ollyjshaw/setup_dev_box/main/install.sh

set -e
export DEBIAN_FRONTEND=noninteractive

#update first
echo "updating first"
apt-get -y update
apt-get -y upgrade

#For pyenv
echo "installing stuff for pyenv"
apt-get install -y git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl

#Common tools
echo "installing common tools"
apt-get install -y vim htop nyancat git 

#Java
echo "installing java stuff"
apt-get install -y openjdk-18-jdk-headless

# Get a version of gradle on
# https://askubuntu.com/questions/932083/how-do-i-upgrade-gradle
echo "installing gradle"
add-apt-repository ppa:cwchien/gradle -y
apt-get -y update
apt-get install -y gradle


#sudo -u ubuntu git clone https://github.com/pyenv/pyenv.git /home/ubuntu/.pyenv
#sudo -u ubuntu cd /home/ubuntu/.pyenv && src/configure && make -C src
#sudo -u ubuntu echo 'export PYENV_ROOT="$HOME/.pyenv"' >>/home/ubuntu/.bashrc
#sudo -u ubuntu echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> /home/ubuntu/.bashrc
#sudo -u ubuntu echo 'eval "$(pyenv init -)"' >> /home/ubuntu/.bashrc
#sudo -u ubuntu echo cd ~/

#sudo apt-get remove docker docker-engine docker.io containerd runc
#sudo apt-get install ca-certificates curl gnupg lsb-release
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
