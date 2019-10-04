prev_mean = 500
prev_Sd = 125

#a
# Increase the price of each lawnmower by $50.00.
cat("Changed mean= ",prev_mean+50)
cat("SD remains unchanged")

#b
#  Increase the price of each lawnmower by 10%. 
cat("Changed mean= ",(1.1)*prev_mean)
cat("Changed sd= ",prev_Sd*(1.1))
