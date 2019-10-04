
# Chapter 14
# Example 14.5 page no. 584 from the pdf..
# Pooling in Multifactor Model..

# to find the anova table from the following data set by removing some interactions and then look at the effect..

m1 <- c(43,49,44,47)

m2 <- c(64,68,97,102)

m3 <- c(49,57,51,55)

m4 <- c(70,76,103,106)

obs <- c(m1,m2,m3,m4)

a <- c(rep("L",4),rep("H",4))
temp <- c(rep(a,2))

batch <- c(rep(1,8),rep(2,8))

b <- c(rep("Low",2),rep("high",2))
string_rate <- c(rep(b,4))

pressure <- c(rep(c("Low","High"),8))

dat <- data.frame(obs,batch,temp,string_rate,pressure)  # making data frame

cat("The anova table after removing particular interactions is")

summary(aov(obs~factor(batch)+factor(temp)*factor(pressure)*factor(string_rate),data = dat))  # taking the elements of interest for interaction..

# we can also use "update" function by writitng the full model of 4 variables and subtracting the undesired interactions,but it will be very tedious..

# the answer may vary slightly..

