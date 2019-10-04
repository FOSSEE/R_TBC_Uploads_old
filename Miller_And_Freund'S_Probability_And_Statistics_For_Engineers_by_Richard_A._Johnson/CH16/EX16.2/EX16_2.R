#Using The Diagram find  the reliability 
#reliability of parallel assembly 
#1)reliability of component C, D, E as Cbar
Cbar=1 - ( 1 - 0.70 )^3
Cbar
#1)reliability of component C, D, E as Fbar
Fbar= 1 - ( 1 - 0.75 )^2
Fbar
#reliability of Series assembly
result=(0.95)*(0.99)*(0.973)*(0.9375)*(0.90)
cat("The Resultent  reliability  is : ",result)
