## Sort
db.movies.find().sort({title: 1})

# Find all documents, Project (title, genres), Sort(title: ASC)
db.movies.find({}, { title: 1, genres: 1 }).sort( {title: 1})
# Find all documents, Project (title, genres), Sort(title: DESC)
db.movies.find({}, { title: 1, genres: 1 }).sort( {title: -1})

# Find all documents, Project (title, genres), Sort(director: ASC then by title: ASC)
db.movies.find({}, { title: 1, genres: 1 }).sort( {director: 1, title: 1})

# Find all documents, Project (title, genres), Sort(title: ASC), Skip(100)
db.movies.find({}, { title: 1, genres: 1 }).sort( {title: 1}).skip(100)

# Find all documents, Project (title, genres), Sort(title: ASC), Skip(100), Limit(5)
db.movies.find({}, { title: 1, genres: 1 }).sort( {title: 1}).skip(100).limit(5)
