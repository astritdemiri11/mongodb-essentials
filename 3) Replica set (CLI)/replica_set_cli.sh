# Create authentication file by OpenSSL
openssl rand -base64 755 > keyfile

# Restrict file to read-only
chmod 400 keyfile

# Create db directories
mkdir -p m{1,2,3}/db

# Start databases with inline options
mongod --replSet testReplSet --dbpath ./m1/db --logpath ./m1/mongodb.log --port 27017 --fork --keyFile ./keyfile
mongod --replSet testReplSet --dbpath ./m2/db --logpath ./m2/mongodb.log --port 27018 --fork --keyFile ./keyfile
mongod --replSet testReplSet --dbpath ./m3/db --logpath ./m3/mongodb.log --port 27019 --fork --keyFile ./keyfile