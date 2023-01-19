# Show available databases
show databases

# Set test database as active
use test

# Insert a document into testColl collection of active db
db.testColl.insertOne({ text: "Hello World!"})