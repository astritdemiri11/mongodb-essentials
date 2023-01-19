show collections
db.purple.find()
db.inventory.aggregate([
  {
    $match: { 
      "variations.variation": "Purple" 
    }
  },
  {
    $unwind: "$variations"
  },
  {
    $match: { 
      "variations.variation": "Purple"
    }
  },
  {
    $out: {
      db: "sample_data",
      coll: "purple",
    }
  }
])
