db.inventory.aggregate([{
  $bucketAuto: {
    groupBy: "$year",
    buckets: 5,
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
    },
  }
}])