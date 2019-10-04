
# Chapter 17
# Example 17.2 page no. 697 from the pdf..
# Plot Xbar and S chart..

# also the questions asks UCL and LCL caculation but their computation is easy relatively, invovles only multiplication and division..
# So I am plotting the S and Xbar Charts..

# 25 samples of size 5 each used to establish the quality control parameters.To plot the xbar and S control charts.
# library used - qicharts2.

install.packages("qicharts2")

library(qicharts2)

m1 <- c(62.255,62.187,62.421,62.301,62.400,62.372,62.297,62.325,62.327,62.297,62.315,62.297,62.375,62.317,62.299,62.308,62.319,62.333,62.313,62.375,62.399,62.309,62.293,62.388,62.324)

m2 <- c(62.301,62.225,62.377,62.315,62.375,62.275,62.303,62.362,62.297,62.325,62.366,62.322,62.287,62.321,62.307,62.319,62.357,62.362,62.387,62.321,62.308,62.403,62.293,62.308,62.318)

m3 <- c(62.289,62.337,62.257,62.293,62.295,62.315,62.337,62.351,62.318,62.303,62.308,62.344,62.362,62.297,62.383,62.344,62.277,62.292,62.315,62.354,62.292,62.318,62.342,62.315,62.315)

m4 <- c(62.189,62.297,62.295,62.317,62.272,62.372,62.392,62.371,62.342,62.307,62.318,62.342,62.319,62.372,62.341,62.319,62.315,62.327,62.318,62.342,62.372,62.295,62.315,62.392,62.295)

m5 <- c(62.311,62.307,62.222,62.409,62.372,62.302,62.344,62.397,62.318,62.333,62.319,62.313,62.382,62.319,62.394,62.378,62.295,62.314,62.341,62.375,62.299,62.317,62.349,62.303,62.319)

obseravation <- c(m1,m2,m3,m4,m5)

samples <- c(rep(1:25,5))


dat <- data.frame(obseravation,samples)


print("The xbar and S chart for the above data is:")


# Run the below two code individually..
#xbar chart 
qic(obseravation,
    x= samples,
    data = dat,
    chart = 'xbar',
    xlab = 'Sample Number')

# S chart 
qic(obseravation,
    x = samples,
    chart = 's',
    xlab = 'Sample Number',
    data = dat)




