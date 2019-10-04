#Example 1 chapter 8 page no 371
rho=0.75
u=60/10.5  #avg service rate per hour
l=rho*u
sd=8.8  #in minutes
var=(8.8/60)^2    # in hours square
EWq1=(1/l)*(((rho^2) +((l^2)*var))/(2*(1-rho)))
cat("avg waiting time in minutes",EWq*60)       
u = 60/8   #new service rate per hour
rho=l/u
var=(6/60)^2   #in hours square
EWq2=(1/l)*(((rho^2) +((l^2)*var))/(2*(1-rho)))
cat("avg waiting time is reduced now in minutes by",EWq1*60-EWq2*60)
cat("percentage reduction in waiting time",(EWq1*60-EWq2*60)/(EWq1*60)*100)
