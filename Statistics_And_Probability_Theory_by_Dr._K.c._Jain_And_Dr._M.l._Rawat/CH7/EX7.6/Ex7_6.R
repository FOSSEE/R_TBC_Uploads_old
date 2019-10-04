#ExAMPLE 6 chapter 7 page no 300 
l=30   #arrival rate customer per hour
u=40   #services per hour
cat("avg line length/customer in the system",l/(u-l))
cat("avg waiting line length",((l*l)/(u*(u-l))))
cat("avg waiting time in the queue in minutes",(l/(u*(u-l)))*60)  #book has calculation error
cat("avg waiting time in the system in minutes",1/(u-l)*60)

