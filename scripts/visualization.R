%load_ext rpy2.ipython

%%R
install.packages("DBI")
install.packages("RSQLite")
install.packages("ggplot2")


# Connect to the SQLite database and query data in R
%%R
library(DBI)
library(RSQLite)

# Connect to the SQLite database
con <- dbConnect(RSQLite::SQLite(), "sales_data.db")

# Query total sales by category
%%R
query <- "SELECT Category, SUM(Sales) as Total_Sales FROM sales GROUP BY Category"
sales_by_category <- dbGetQuery(con, query)

# Query total sales by region
query_region <- "SELECT Region, SUM(Sales) as Total_Sales FROM sales GROUP BY Region"
sales_by_region <- dbGetQuery(con, query_region)

# Close the connection
dbDisconnect(con)

# Bar plot of total sales by category
%%R
library(ggplot2)

ggplot(sales_by_category, aes(x = Category, y = Total_Sales, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Category", x = "Category", y = "Total Sales") +
  theme_minimal()

# Bar plot of total sales by region
ggplot(sales_by_region, aes(x = Region, y = Total_Sales, fill = Region)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Sales by Region", x = "Region", y = "Total Sales") +
  theme_minimal()

