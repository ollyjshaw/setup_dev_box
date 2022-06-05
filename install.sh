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
add-apt-repository ppa:cwchien/gradle -y
apt-get -y update
apt-get install -y gradle
