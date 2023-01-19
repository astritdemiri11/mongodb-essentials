## Logical Operators ($and | $or | $nor | $not)
use sample_data
db.inventory.findOne()

# Find one document by Filter (variation.quantity != 0 and variation.quantity !== null)
db.inventory.findOne(
    {
        $and: [
            { "variations.quantity": { $ne: 0} },
            { "variations.quantity": { $exists: true } }
        ]
    }
)

# Find one document by Filter (
#  variation.variation === "Blue" or
#  variation.variation === "Green" or
#  variation.variation === "Teal"
# )
db.inventory.findOne(
    {
        $or: [
            { "variations.variation": "Blue" },
            { "variations.variation": "Green" }
            { "variations.variation": "Teal" },
        ]
    }
)

# Find one document by Filter (NOT: (price > 8000 and variations.variation === "Blue"))
db.inventory.findOne(
    {
        $nor: [
            { price: { $gt: 8000 } },
            { "variations.variation": "Blue" }
        ]
    }
)

# Find one document by Filter (NOT: price > 20000)
db.inventory.findOne(
    {
        $not: { price: { $gt: 20000 } },
    }
)