show collections
db.purple.find()
db.inventory.aggregate([
  {
    $match: { "variations.variation": "Purple" }
  },
  {
    $unwind: "$variations"
  },
  {
    $match: { "variations.variation": "Purple" }
  },
  {
    $merge: {
      into: "purple",
      on: "_id",
      whenMatched: "keepExisting",
      whenNotMatched: "insert",
    }
  }
])
