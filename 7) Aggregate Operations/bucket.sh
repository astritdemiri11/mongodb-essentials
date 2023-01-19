## Bucket Aggregation Operator

# Bucket (create groups by boudaries and group documents where year should be inside boundaries)
db.inventory.aggregate([{
  $bucket: {
    groupBy: "$year",
    boundaries: [1980, 1990, 2000, 2010, 2020],
    default: -1,
    output: {
      count: {
        $sum: 1,
      },
      cars: {
        $push: {
          name: "$name",
          model: "$model",
        },
      },
    }
  }
}])