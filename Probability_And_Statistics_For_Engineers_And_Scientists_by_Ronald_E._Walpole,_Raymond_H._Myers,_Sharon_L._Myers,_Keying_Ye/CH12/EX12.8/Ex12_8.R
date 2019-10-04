
# Chapter 12
# Example 12.8 page no. 470 from the pdf..
# To show Analysis of Variance Table for Grain Radius Data

pow_temp <- c(150,190,150,150,190,190,150,190)
ext_rate <- c(12,12,24,12,24,12,24,24)
die_temp <- c(220,220,220,250,220,250,250,250)



gra_radius <- c(82,93,114,124,111,129,157,164)
  
dat <- data.frame(pow_temp,ext_rate,die_temp,gra_radius)

# converting into factors..
dat$pow_temp <- factor(dat$pow_temp)
dat$ext_rate <- factor(dat$ext_rate)
dat$die_temp <- factor(dat$die_temp)


l <- lm(gra_radius~pow_temp+ext_rate+die_temp,data = dat)

# analysis of variance table for grain radius data..
print("The analysis of variance table for this data is:")
summary(aov(l,data= dat))

