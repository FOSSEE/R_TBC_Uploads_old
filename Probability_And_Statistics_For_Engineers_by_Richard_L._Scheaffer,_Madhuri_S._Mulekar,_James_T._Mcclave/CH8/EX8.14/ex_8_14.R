m1 =c(16.1,16.2,16.0,16.1,16.5,16.8,16.1,15.9,15.7,16.2,16.4,16.5,16.7,17.1,17.0,16.2,17.1,15.8,16.4,15.4)
m2 =c(16.2,16.4,16.1,16.2,16.1,15.9,16.9,16.2,16.7,16.9,16.9,16.9,16.2,16.2,16.8,16.7,16.9,16.2,16.2,15.1)
m3 =c(15.9,15.8,15.7,15.9,16.4,16.1,16.2,16.8,16.1,16.1,17.1,17.2,16.4,17.0,16.4,16.6,16.2,17.1,16.7,15.0)
m4 =c(16.0,16.1,16.3,16.4,16.4,16.3,16.5,16.1,16.4,17.0,16.2,16.1,15.8,16.9,16.5,16.2,16.0,16.9,16.8,15.2)
m5 =c(16.1,16.2,16.1,16.6,16.2,16.4,16.5,16.4,16.8,16.4,16.1,16.4,16.6,16.1,16.2,17.0,16.1,16.2,16.1,14.9)

obseravation <- c(m1,m2,m3,m4,m5)

samples <- c(rep(1:20,5))


dat <- data.frame(obseravation,samples)


print("The xbar and S chart for the above data is:")

#install the package qicharts for xbar chart

library(qicharts)
# Run the below two code individually..
#xbar chart 
qic(obseravation,
    x= samples,
    data = dat,
    chart = 'xbar',
    xlab = 'Sample Number')

#install the package qcc for R chart

# R chart 
library(qcc)
dat1=data.frame(m1,m2,m3,m4,m5)
qcc(dat1,type = "R")
