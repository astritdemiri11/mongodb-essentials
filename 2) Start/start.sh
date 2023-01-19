# Create database path directory
mkdir mongodb_path

# Start database at directory
mongod --dbpath mongodb_path

# Connect to database by shell
mongosh