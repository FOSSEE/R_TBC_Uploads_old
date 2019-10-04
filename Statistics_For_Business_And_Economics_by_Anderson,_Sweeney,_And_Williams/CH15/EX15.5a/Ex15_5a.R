                                     # Page no. : 668 - 671

# Categorical Independent Variables

service <- c(1:10)
month <- c(2,6,8,3,2,7,9,8,4,6)
repair <- c("electrical","mechanical","electrical","mechanical","electrical","electrical",
            "mechanical","mechanical","electrical","electrical")
time <- c(2.9, 3.0, 4.8, 1.8, 2.9, 4.9, 4.2, 4.8, 4.4, 4.5)

DF <- data.frame(service, month, repair, time)

# With one Independent variable

regressor <- lm(time ~ month, data = DF)
res <- summary(regressor)

res

b0 <- res$coefficients[1]
b1 <- res$coefficients[2]

cat("Equation is y = ", b0 ,"+",b1,"x1")

# With Categorical Variable

DF$repair <- factor(DF$repair,
                    levels = c('electrical', 'mechanical'),
                    labels = c(1, 0))

regressor <- lm(time ~ month + repair, data = DF)
res <- summary(regressor)

res

b0 <- res$coefficients[1]
b1 <- res$coefficients[2]
b2 <- res$coefficients[3]

# For Electrical Repair

bterm <- b0 + b2 * 1

cat("Equation for electrical is  y = ", bterm ,"+",b1,"x1" )   

# For Mechanical Repair

bterm2 <- b0 + b2 * 0

cat("Equation for mechanical is  y = ", bterm2 ,"+",b1,"x1" )   
