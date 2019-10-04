#The quartiles
x<- c(4,11,14,23,23,23,23,24,27,29,31,33,40,42,44,44,44,46,47,60,61,62,65,77)
q1<- quantile(x,0.25,type = 2)#q1 is quartile 1
#Type 2 seems to be the method the course uses to calulate Q1 and Q3 and IQR. Type 7 is the default method used by R.
q1
q3<- quantile(x,0.75,type = 2)#q3 is quartlie 3
q3
