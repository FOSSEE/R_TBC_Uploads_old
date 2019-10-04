                                 # Page no. : 595 - 597

# Using the Estimated Regression Equation for Estimation and Prediction

restaurant <- c(1,2,3,4,5,6,7,8,9,10)
student_population <- c(2,6,8,8,12,16,20,20,22,26)
quartely_sales <- c(58,105,88,118,117,137,157,169,149,202)

DF <- data.frame(restaurant, student_population, quartely_sales)

regressor <- lm(quartely_sales ~ student_population, data = DF)
res <- summary(regressor)

pred <- predict(regressor, data.frame(student_population=10), interval="confidence") 

PE <- pred[1]
IE1 <- pred[2]
IE2 <- pred[3]

cat("Point estimate is ", PE)
cat("Confidence Interval is ",IE1, "to", IE2)

pred2 <- predict(regressor, data.frame(student_population=10), interval="predict")

IE1 <- pred2[2]
IE2 <- pred2[3]

cat("Prediction Confidence Interval is ",IE1, "to", IE2)
