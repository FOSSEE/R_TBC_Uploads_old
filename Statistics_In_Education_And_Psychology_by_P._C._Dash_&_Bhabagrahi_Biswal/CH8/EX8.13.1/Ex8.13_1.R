#Page.No 8.53 - 8.57


r12<-0.9 # correlation between 1st and 2nd variable
r13<-0.6 # correlation between 1st and 3rd variable
r23<-0.2 # correlation between 2nd and 3rd variable

# (a) keeping 3rd  variable constat 
r12.3<-(r12-(r13*r23))/(sqrt(1-r13^2)*sqrt(1-r23^2))
 
# (b) keeping 1st variable constant 
r23.1<-(r23-(r12*r13))/(sqrt(1-r12^2)*sqrt(1-r13^2))

#(c)Keeping 2nd variable constant
r13.2<-(r13-(r12*r23))/(sqrt(1-r12^2)*sqrt(1-r23^2))

cat("The partial correlation coefficients keeping the 
    1st 2nd 3rd variables as constant respectly are",r23.1,r13.2,r12.3)
