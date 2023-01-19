# Create authentication file by OpenSSL
openssl rand -base64 755 > keyfile

# Restrict file to read-only
chmod 400 keyfile

# Create db directories
mkdir -p m{1,2,3}/db

# Create db file configs
touch m1.conf
cp m1.conf m2.conf
cp m1.conf m3.conf

# Start databases with file config option
mongod -f m1.conf
mongod -f m2.conf
mongod -f m3.conf