## Example 11.4.1 Page 572
##Logistic regression 

cases <- c(21,20,92,15)
disease <- c(1,1,0,0)
disease = factor(disease,labels = c("present","absent"))
sex <- c(1,2,1,2)
sex = factor(sex,labels=c("male","female"))
dt = data.frame(disease,sex,cases)
dt
xtabs(cases~.,dt)  #creates contingency table
fit <- glm(disease~sex, weights = cases, data = dt, family = "binomial")  #logistic regression
summary(fit)

##summary gives estimated calue for sex and intercept
##pvalue < 0.05, hence significant



