db.authors.findOne()

# Create index at property name (ASC order)
db.createIndex({ name: 1 })

# TEST
use lookup
db.records.insertMany({
    "name": "Astrit Demiri",
    "number": "1234567890",
    "profession": "Senior Software Developer",
    "website": "https://astritdemiri.com"
})
db.records.findOne()
db.records.createIndex({name: 1})
db.records.createIndex({number: 1})