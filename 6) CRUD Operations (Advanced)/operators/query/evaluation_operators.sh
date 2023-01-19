## Evaluation Operators ($expr)

use sample_data
db.movies.findOne()
db.movies.find({ title: 1, ratings: 1 })

# Find all documents by Filter with aggregation (Expr: ratings.mndb * 10 > ratings.soft_avocados)
db.movies.find(
    { $expr: { $gt: [{$multiply: ['$ratings.mndb', 10]}, '$ratings.soft_avocados'] } }
)

#TEST
use order_app
db.oders.insertMany([
    {
        "time": Date(),
        "items": [{
            "name": "Fries",
            "quantity": 1,
            "price": 2.99
        },{
            "name": "Diet Coke",
            "quantity": 1,
            "price": 1.99
        }],
        "delivery_cost": 3.50,
        "total": 8.48,
        "user": {
            "name": "Astrit Demirir",
            "address": "Sample Street 123",
            "email": "contact@astritdemiri.com",
            "phone": "12345678910",
            "balance": 10
        },
        "restaurant": {
            "name": "Burger King",
            "address": "Somewhere in Amsterdam"
        }
    },
    {
        "time": Date(),
        "items": [{
            "name": "Fries",
            "quantity": 1,
            "price": 2.99
        },{
            "name": "Diet Coke",
            "quantity": 2,
            "price": 1.99
        }],
        "delivery_cost": 3.50,
        "total": 10.47,
        "user": {
            "name": "Astrit Demiri",
            "address": "Sample Street 123",
            "email": "contact@astritdemiri.com",
            "phone": "12345678910",
            "balance": 10
        },
        "restaurant": {
            "name": "Burger King",
            "address": "Somewhere in Amsterdam"
        }
    }
])
db.orders.find({
    $expr: {
        $gt: [
            "$total",
            "$user.balance"
        ]
    }
})