# Connect to database by shell
mongosh

# Set admin database as active
use admin

# Initialize replica set
config = {
    _id: "testReplSet",
    members: [
        { _id: 0, host: "localhost:27017" },
        { _id: 1, host: "localhost:27018" },
        { _id: 2, host: "localhost:27019" }
    ]
};
rs.initiate(config)

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