
# Chapter 12
# Example 12.11 page no. 480 from the pdf..
# to model the data set using forward selection..

# the data set from example 10 is used for modelling..
y <- c(57.5,52.8,61.3,67.0,53.5,62.7,56.2,68.5,69.2)

x1 <- c(78,69,77,88,67,80,74,94,102)

x2 <- c(48.2,45.5,46.3,49.0,43.0,48.0,48.0,53.0,58.0)

x3 <- c(2.75,2.15,4.41,5.52,3.21,4.32,2.31,4.30,3.71)


x4 <- c(29.5,26.3,32.2,36.5,27.2,27.7,28.3,30.3,28.7)


dat <- data.frame(y,x1,x2,x3,x4)

# model..using forward selection

line <- lm(y~x1,data=dat)
summary(line)$adj.r.sq

line1 <- lm(y~x2,data=dat)
summary(line1)$adj.r.sq

line2 <- lm(y~x3,data=dat)
summary(line2)$adj.r.sq

line3 <- lm(y~x4,data=dat)
summary(line3)$adj.r.sq
# by looking at 4 adj r sq. values x1 has max. increase so x1 in the model
line4 <- lm(y~x1 +x2,data=dat)
summary(line4)$adj.r.sq

line5 <- lm(y~x1 +x3,data=dat)
summary(line5)$adj.r.sq

line6 <- lm(y~x1 +x4,data=dat)
summary(line6)$adj.r.sq
# by looking at the adj. r .sq. x1 +x3 combination has the max. value so x1+x3 in the model.

line7 <- lm(y~x1+x3+x4,data = dat)
summary(line7)$adj.r.sq
# by looking at this estimate, adj. r. sq. is decreases so x4 is excluded from the final model..

line8 <- lm(y~x1+x2+x3,data = dat)
summary(line8)$adj.r.sq
cat("The correlation coefficient between x1 and x3 is",cor(x1,x2))
#although the adj. r .squared is max. for this model,but it is high from x1+x3 by small amount,we will not include x2 as the correlation coefficient between x1 and x2 is high meaning they are dependent..

#final model..
cat("The final model is ")
lm(y~x1+x3,data = dat)
summary(lm(y~x1+x3,data = dat))
cat("The coefficients of the final model is",coefficients(lm(y~x1+x3,data = dat)))
# we can also solve the same by backward elimination..
#So both answers are correct..


