                                    # Page no. : 765

# Price Relatives

year <- c(1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008)

price_per_gallon <- c(1.30, 1.10,1.09,1.07,1.08,1.11,1.22,1.20,1.03,1.14,1.48,1.42,1.34,1.56,1.85,2.27,2.57,2.80,3.25)

DF <- data.frame(year,price_per_gallon)

base_year <- 1990
base_year_price <- DF$price_per_gallon[DF$year == base_year]

price_relative <- round(((DF$price_per_gallon) / (base_year_price)) * 100, 2)

DF <- cbind(DF, price_relative)

View(DF)