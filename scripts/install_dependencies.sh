# sudo apt-get update
# sudo apt-get install -y gnupg
# wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
# echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
# sudo apt-get update
# sudo apt-get install -y mongodb-org
# sudo systemctl start mongod
# sudo systemctl status mongod

sudo yum update -y
sudo yum install -y gnupg curl git
sudo rpm --import https://www.mongodb.org/static/pgp/server-5.0.asc
echo "[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc" | sudo tee /etc/yum.repos.d/mongodb-org-5.0.repo
sudo yum install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
