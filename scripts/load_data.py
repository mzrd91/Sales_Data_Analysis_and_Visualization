import sqlite3
import pandas as pd

# Connect to SQLite database (or create it)
conn = sqlite3.connect('sales_data.db')

# Load the CSV data into a DataFrame
sales_data = pd.read_csv('train.csv')

# Write the DataFrame to a SQL table
sales_data.to_sql('sales', conn, if_exists='replace', index=False)

# Close the connection
conn.close()
