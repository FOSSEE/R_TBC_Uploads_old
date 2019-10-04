                                   # Page no. : 769 - 770

# Computing an Aggregate Price Index from Price Relatives

item <- c("Gallon of gasoline","Quart of oil","Tire","Insurance policy")
year_1990 <- c(1.30,2.10,130.00,820.00)
year_2008 <- c(3.25,8.00,140.00,1030.00)
quantity <- c(1000,15,2,1)

DF <- data.frame(item,year_1990,year_2008,quantity)

base_year <- 1990

price_relative <- (DF$year_2008 / DF$year_1990) * 100

weight <- DF$year_1990 * DF$quantity

weight_price_relative <- price_relative * weight

DF <- cbind(DF, price_relative, weight, weight_price_relative)

aggregate_2008 <- sum(DF$weight_price_relative) / sum(DF$weight) 

cat("Aggregate Price Index for year 2008 is",aggregate_2008)