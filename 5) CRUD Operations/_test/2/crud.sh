# Insert many documents into authors collection
db.authors.insertMany([
    {"name": "Eliot Horowitz"},
    {"name": "Dwight Merriman"},
    {"name": "Kevin P. Ryan"}
])

# Find one document with no filter
db.authors.findOne()
# Find all documents by Filter: (Name = "Astrit Demiri")
db.authors.find({ name: "Astrit Demiri"})

# Update one document by Filter: (Name = "Astrit Demiri"), Set: (Website = "https://astritdemiri.com")
db.authors.updateOne(
    { name: "Astrit Demiri"},
    { $set: { website: "https://astritdemiri.com" } }
)

db.authors.find({ name: "Astrit Demiri"})

# Update all documents Set: (Books = [])
db.authors.updateMany(
    { },
    { $set: { books: [] } }
)

db.authors.findOne()

# Delete one document by Filter: (Name = "Astrit Demiri")
db.authors.deleteOne({ name: "TiTi Demiri" })