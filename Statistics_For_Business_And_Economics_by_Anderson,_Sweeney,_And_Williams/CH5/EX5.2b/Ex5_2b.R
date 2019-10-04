                                           # Page no. : 211

# Binomial Probability Distribution Eg-2

# Data 
customer1 <- c("Purchase","Purchase","No Purchase")
customer2 <- c("Purchase","No Purchase","Purchase")
customer3 <- c("No Purchase","Purchase","Purchase")

customer <- data.frame(customer1,customer2,customer3)

len <- nrow(customer)  # Trial

x <- 1   # For purchase
y <- 0   # For no purchase

p <- 0.30   
q <- 1 - p  
outcome <- c()

# Install Library if not installed

install.packages("Rlab")

# Import Library

library(Rlab)   # For dbern

for(i in 1:len)
{
  if(customer1[i] == "Purchase" && customer2[i] == "Purchase" && customer3[i] == "Purchase")
  {
    outcome[i] = dbern(x,p) * dbern(x,p) * dbern(x,p)
  } else if(customer1[i] == "Purchase" && customer2[i] == "Purchase" && customer3[i] == "No Purchase")
  {
    outcome[i] = dbern(x,p) * dbern(x,p) * dbern(y,p)
  } else if(customer1[i] == "Purchase" && customer2[i] == "No Purchase" && customer3[i] == "Purchase")
  {
    outcome[i] = dbern(x,p) * dbern(y,p) * dbern(x,p)
  } else if(customer1[i] == "Purchase" && customer2[i] == "No Purchase" && customer3[i] == "No Purchase")
  {
    outcome[i] = dbern(x,p) * dbern(y,p) * dbern(y,p)
  } else if(customer1[i] == "No Purchase" && customer2[i] == "Purchase" && customer3[i] == "Purchase")
  {
    outcome[i] = dbern(y,p) * dbern(x,p) * dbern(x,p)
  } else if(customer1[i] == "No Purchase" && customer2[i] == "Purchase" && customer3[i] == "No Purchase")
  {
    outcome[i] = dbern(y,p) * dbern(x,p) * dbern(y,p)
  } else if(customer1[i] == "No Purchase" && customer2[i] == "No Purchase" && customer3[i] == "Purchase")
  {
    outcome[i] = dbern(y,p) * dbern(y,p) * dbern(x,p)
  } else
  {
    outcome[i] = dbern(y,p) * dbern(y,p) * dbern(y,p)
  }
}

customer <- cbind(customer,outcome)

View(customer)

                                        # Page no. : 212 - 213

# Binomial Probability Function

x <- c(0,1,2,3)
fun <- c()

for (i in 0:length(x)) {
  fun[i] <- dbinom(x[i],len,p)
}

dataset <- data.frame(x, fun)
View(dataset)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(dataset, aes(x = x, y = fun)) + geom_bar(stat = "identity", fill = "blue") + labs(
  title = "Graphical representation of the Probability Distribution", 
  x = "Number of Customers", y = "Probability")

                                        # Page no. : 214 - 215

# Expected Value, Variance and Standard Deviation for Binomial Probability Distribution

expected_value <- len * p
variance <- len * p * q
standard_deviation <- sqrt(variance)

cat("Expected value is",expected_value)
cat("Variance is",variance)
cat("Standard deviation is",standard_deviation)