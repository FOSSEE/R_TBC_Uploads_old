                                      # Page no. : 684 - 686

# Logistic Regression

customer <- c(1,2,3,4,5,6,7,8,9,10)
spending <- c(2.291,3.215,2.135,3.924,2.528,2.473,2.384,7.076,1.182,3.345)
card <- c(1,1,1,0,1,0,0,0,1,0)
coupon <- c(0,0,0,0,0,1,0,0,1,0)

DF <- data.frame(customer, spending, card, coupon)

regressor <- glm(coupon ~ spending + card, data = DF)
summary(regressor)

# Book answer is different