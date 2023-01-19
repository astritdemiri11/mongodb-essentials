# Navigate to data directory
cd datasets

# Import collections using mongoimport database tool
mongoimport --username="astritdemiri" --authenticationDatabase="admin" --db=sample_data inventory.json
mongoimport --username="astritdemiri" --authenticationDatabase="admin" --db=sample_data movies.json
mongoimport --username="astritdemiri" --authenticationDatabase="admin" --db=sample_data orders.json