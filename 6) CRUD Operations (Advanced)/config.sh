## Configure reading data by prioritizing concern and preference

#  Control the consistency of the data (local | available | majority | linearizable)
db.inventory.findOne().readConcern("local")
db.inventory.findOne().writeConcern("majority")

#  Control the consistency of the data (primary | primaryPrefered | secondary | secondaryPrefered | nearest)
db.inventory.findOne().readPreference("primary")
