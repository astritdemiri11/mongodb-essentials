## Group Aggregation Operator
use sample_data
db.inventory.findOne()

# Group documents by (souce field)
db.inventory.aggregate([{
  $group: {
    _id: "$source"
  }
}])

# Group documents by (souce field), project (count as sum for each group)
db.inventory.aggregate([{
  $group: {
    _id: "$source",
    count: { 
      $sum: 1
    }
  }
}])

# Group documents by (souce field), project (count: sum of each group, items: name array for each source group)
db.inventory.aggregate([{
  $group: {
    _id: "$source",
    count: { 
      $sum: 1
    },
    items: { 
      $push: "$name" 
    }
  }
}])

# Group documents by (souce field), 
#  project (count: sum of each group, items: name array for each source group, avg_price: average price in the group)
db.inventory.aggregate([{
  $group: {
    _id: "$source",
    count: {
      $sum: 1,
    },
    items: {
      $push: "$name",
    },
    avg_price: {
      $avg: "$price",
    }
  }
}])