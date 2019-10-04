                                     # Page no. : 940 - 941

# Problem Formulation

decision <- factor(c("Small Complex, d1", "Medium Complex, d2", "Large Complex, d3"))
demand1 <- c(8, 14, 20)
demand2 <- c(7, 5, -9)

DF <- data.frame(decision, demand1, demand2)

# Install Library if not install

install.packages("rpart")
install.packages("rpart.plot")

# Import Library

library(rpart)
library(rpart.plot)

ans <- rpart(decision ~ ., data = DF, method = "class" )
rpart.plot(ans)

# Decision Tree is Different from Book


