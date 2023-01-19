use blog

# Start session
session = db.getMongo().startSession( { readPreference: { mode: "primary" } } )

# Start transaction
session.startTransaction()

# Update all documents in blog db, Set(message = "Transaction occured")
session.getDatabase("blog").updateMany( {}, {$set: {message: "Transaction occured"} } )

# Commit transaction
session.commitTransaction()

# End session
session.endSession()

db.authors.find()