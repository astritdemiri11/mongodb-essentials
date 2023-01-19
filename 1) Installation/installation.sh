# Install MongoDB Version Manager via NPM
npm install -g m

# Downloading the latest MongoDB Binary
m latest

# Checking the downloaded version
mongod --version

## Install MongoDB Shell and Database Tools

# Preperation
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update

# Install MongoDB Shell
sudo apt-get install -y mongodb-mongosh

# Install MongoDB Database Tools
sudo apt-get install -y mongodb-database-tools