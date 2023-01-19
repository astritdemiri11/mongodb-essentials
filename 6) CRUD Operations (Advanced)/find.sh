use sample_data
show collections
db.inventory.findOne()
db.orders.findOne()
db.movies.findOne()

# Find one document by Filter (rating.mndb = 10)
db.movies.findOne({"ratings.mndb": 10})
# Find one document by Filter (genres[0] = "Musical")
db.movies.findOne({"genres.0": "Musical"})