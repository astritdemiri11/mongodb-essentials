## Comparison Operators ($eq | $gt | $gte | $lt | $lte | $ne | $in | $nin | $all)

use sample_data
db.inventory.findOne()

# Find one document by Filter (variations.quality >= 22)
db.inventory.findOne({ "variations.quantity": { $gte: 22 } })

# Find one document by Filter (price < 2000)
db.inventory.findOne({ "price": { $lt: 2000 } })

# Find one document by Filter (variations.variation includes "Blue" or "Red")
db.inventory.findOne({ "variations.variation": { $in: [ "Blue", "Red" ] } })

# Find one document by Filter (variations.variation does not include "Blue" and "Red")
db.inventory.findOne({ "variations.variation": { $nin: [ "Blue", "Red" ] } })