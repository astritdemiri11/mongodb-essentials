## Array Operators ($all | $elemMatch)
use sample_data
db.movies.findOne()

# Find all documents by Filter (genres includes "Comedy")
db.movies.find({genres: "Comedy"})

# Find all documents by Filter (genres === ["Comedy", "Drama", "Thriller"])
db.movies.find({genres: ["Comedy", "Drama", "Thriller"]})

# Find all documents by Filter (genres includes "Comedy" and "Drama")
db.movies.find({genres: { $all: ["Comedy", "Drama"] } })
db.inventory.findOne()

# Find all documents by Filter (variations.variation === "Blue" and variations.quantity > 8)
db.inventory.find({
    variations: {
      $elemMatch: {
        variation: "Blue",
        quantity: { $gt: 8  }
      }
    }
  }
)
db.movies.findOne()
