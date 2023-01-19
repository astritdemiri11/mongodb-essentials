## Update Array Operators ($push | $addToSet | $pop)

# Update one document by Filter (title === "The Adventures of Tom Thumb & Thumbelina"), Add last ("Test" into genres)
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $push: { genres: "Test" }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )

# Update one document by Filter (title === "The Adventures of Tom Thumb & Thumbelina"), Add last IF NOT EXISTS ("Test" into genres)
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $addToSet: { genres: "Test" }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )

# Update one document by Filter (title === "The Adventures of Tom Thumb & Thumbelina"), Add last IF NOT EXISTS ("Green" into genres)
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $addToSet: { genres: "Green" }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )

# Update one document by Filter (title === "The Adventures of Tom Thumb & Thumbelina"), Remove last (from genres)
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $pop: { genres: 1 }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )

# Update one document by Filter (title === "The Adventures of Tom Thumb & Thumbelina"), Remove last (from genres)
db.movies.updateOne(
    {
        title: 'The Adventures of Tom Thumb & Thumbelina'
    },
    {
        $pop: { genres: 1 }
    }
)
db.movies.findOne( {title: 'The Adventures of Tom Thumb & Thumbelina'} )
