sudo apt-get update -y
sudo apt-get install -y ruby
sudo apt-get install -y awscli
sudo aws s3 cp s3://aws-codedeploy-eu-west-2/latest/install . --region eu-west-2
sudo apt-get update
sudo apt-get install wget
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x install
sudo ./install auto
sudo chown -R ubuntu:ubuntu /var/www/fireapp
sudo apt install -y gnupg curl git
curl -fsSL https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [arch=amd64,arm64] https://repo.mongodb.org/apt/ubuntu $(lsb_release -sc)/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt update
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo apt install -y mongodb-org
sudo systemctl start mongod
