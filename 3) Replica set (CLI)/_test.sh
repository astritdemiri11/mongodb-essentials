# Connect to database instance by shell
mongosh “mongodb://localhost:27017”

# Set admin database as active (If db does not exist MongoDB creates it)
use admin

# Initialize replica set
rs.initiate()

# Create user (Allowed because of localhost)
db.createUser({user: 'astritdemiri', pwd: passwordPrompt(), roles: ["root"]})

# Authenticate user
db.getSiblingDB("admin").auth("astritdemiri", passwordPrompt())

# Add other instances into the replica set
rs.add("localhost:27018")
rs.add("localhost:27019")

# Check replica set status V1
rs.status()
# Check replica set status V2
db.serverStatus()['repl']