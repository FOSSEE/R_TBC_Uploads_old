                                     # Page no. : 766

# Aggregate Price Indexes

item <- c("Gallon of gasoline","Quart of oil","Tire","Insurance policy")
year_1990 <- c(1.30,2.10,130.00,820.00)
year_2008 <- c(3.25,8.00,140.00,1030.00)
quantity <- c(1000,15,2,1)

DF <- data.frame(item,year_1990,year_2008,quantity)

base_year <- 1990

sum_of_1990_items <- sum(DF$year_1990)

sum_of_2008_items <- sum(DF$year_2008)

aggregate_index_2008 <- (sum_of_2008_items / sum_of_1990_items) * 100

cat("The unweighted aggregate index for year 2008 is",aggregate_index_2008)


sum_of_1990_items <- sum(DF$year_1990 * DF$quantity)   # Weighted Sum 

sum_of_2008_items <- sum(DF$year_2008 * DF$quantity)   # Weighted Sum

aggregate_index_2008 <- (sum_of_2008_items / sum_of_1990_items) * 100

cat("The weighted aggregate index for year 2008 is",aggregate_index_2008)
