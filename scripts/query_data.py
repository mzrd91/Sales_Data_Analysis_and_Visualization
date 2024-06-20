# Reconnect to the database
conn = sqlite3.connect('sales_data.db')

# Example SQL query to get total sales by category
query = """
SELECT Category, SUM(Sales) as Total_Sales
FROM sales
GROUP BY Category
"""

# Execute the query and load the result into a DataFrame
sales_by_category = pd.read_sql(query, conn)

# Close the connection
conn.close()

# Display the result
sales_by_category

