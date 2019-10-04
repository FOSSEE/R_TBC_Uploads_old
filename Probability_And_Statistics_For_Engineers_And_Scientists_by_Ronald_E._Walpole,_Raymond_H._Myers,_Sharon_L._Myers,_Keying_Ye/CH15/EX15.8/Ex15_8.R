
# Chapter 15
# example 15.8 page no. 640 from the pdf..
# Response Surface Analysis..

# a central composite design is given on page no.641 of the pdf,to determine the impact that x1 and x2 have on % conversion process..
#Package used - rsm if not installed can be done using install.packaged("rsm")
library(rsm)

x1 <- c(-1,1,-1,1,-1.414,1.414,0,0,0,0,0,0)

x2 <- c(-1,-1,1,1,0,0,-1.414,1.414,0,0,0,0)

y <- c(43,78,69,73,48,78,65,74,76,79,83,81)

dat <- data.frame(x1,x2,y)

res_model <- rsm(y~FO(x1,x2,x1^2,x2^2,x1*x2),data = dat)

print("The coefficients of the resulting second order response model is given in coded variables as")

coefficients(res_model)

print("The detailed response surface model is given below")

summary(res_model)


# the natural model..
e1 <- c(200,250,200,250,189.65,260.35,225,225,225,225,225,225)

e2 <- c(15,15,25,25,20,20,12.93,27.07,20,20,20,20)

dat1 <- data.frame(e1,e2,y)

print("The natural surface model is shown below:")

nat_model <- lm(y~e1+e2+I(e1^2)+I(e2^2)+I(e1*e2),data = dat1)

summary(nat_model)

print("The coefficients of the natural surface model is given as follows:")

coefficients(nat_model)


