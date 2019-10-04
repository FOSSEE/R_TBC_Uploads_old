##Example 11.4.2 Pg.573
##Logistic regression

age<- c(50,59,42,50,34,49,67,44,53,45,79,
        46,62,58,70,60,67,64,62,50,61,69,
        74,65,80,69,77,61,72,67,73,75,71,
        69,78,69,74,86,49,63,63,72,64,72,
        64,72,79,75,70,73,66,75,73,71,72,
        69,76,60,79,78,62,73,46,57,53,40,
        73,68,72,59,64,78,68,67,55,71,80,
        75,69,80,79,71,69,78,75,71,69,77,
        81,78,76,84,74,59,81,74,77,59,75,
        68,81,74,65,81,62,85,84,39,52,67,
        82,84,79,81,74,85,92,69,83,82,85,
        82,74,50,55,66,49,55,73,41,64,
        46,65,50,61,64,59,73,73,65,67,60,
        69,61,79,66,68,61,63,70,68,59,64,
        62,74,61,69,76,71,61,46,69,66,57,
        60,63,63,56,70,70,63,63,65,67,68,
        84,69,78,69,79,83,67,47,57,66)

status <- c(rep(0,122),rep(1,63))
status
status1 = factor(status,labels = c("nonparticipating","participating"),levels=c(0,1))
status1

fit <- glm(status1~1+age,family="binomial",control=glm.control(maxit=50))  #logistic regression
summary(fit)
##summary gives the estimates of intercept and age
##Also the p value to test the slope coefficient

##A function to estimate probabilities from logistic model
est_prob <- function(x)
{
  pred = predict(fit,newdata=data.frame(age=x))
  prob = exp(pred)/(1+exp(pred))
  print(prob)
}

est_prob(x=50)
est_prob(x=age)
plot(age,est_prob(x=age))
