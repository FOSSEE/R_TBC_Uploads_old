#Example 4 chapter 7 page no 298
l = 10      #arrival_rate sets per day
u = 16  # mean service sets per day
rho = l/u
cat((1-rho)*8,"hrs expected idle time in a day of 8 hrs")
ls = l/(u-l)      # average number of sets in the system
cat(round(ls,digits = 0),"average number of sets in the system")
