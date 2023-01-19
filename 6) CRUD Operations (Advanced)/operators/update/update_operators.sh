# Update Operators ($set | $unset | $inc | $mul | $max | $min)
use blog
show collections
db.authors.find()

# Update one document by Filter(name = "Astrit Demiri"), Set(message = "Hello World")
db.authors.updateOne(
    { name: "Astrit Demiri" },
    { $set: { message: "Hello World!" } }
)

db.authors.find()

# Update all documents Set(message = "Hello World")
db.authors.updateMany(
    {},
    { $set: { message: "Hello" } }
)
db.authors.find()

# Update all documents Unset(message = "Hello World")
db.authors.updateMany(
    {},
    { $unset: { message: "" } }
)
db.authors.find()
