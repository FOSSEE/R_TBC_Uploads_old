                                       # Page no. : 415 - 417

# Inference about the Difference between the two Population Means Sigma 1 and Sigma 2 Unknown

s1 <- 150   
s2 <- 125   
n1 <- 28   
n2 <- 22  
xbar1 <- 1025  
xbar2 <- 910    

point_estimate <- xbar1 - xbar2

numerator <- ((((s1)**2 /n1) + ((s2)**2 /n2))**2) 
denomenator <- ((1 /(n1 -1)) * (((s1)**2 / n1)**2)) + ((1 /(n2 -1)) * (((s2)**2 / n2)**2))

df <- numerator / denomenator  # Degree of Freedom

t_value <- qt(0.975,df)   # alpha/2 = 0.05/2 = 0.025 = 1- 0.025 = 0.975

standard_error <- sqrt((((s1)^2)/(n1)) + (((s2)^2)/(n2)))

IE1 <- point_estimate + t_value*standard_error      
IE2 <- point_estimate - t_value*standard_error

cat("The interval estimation for the given information at 95% confidence level is ",IE2 ,
    "to", IE1)