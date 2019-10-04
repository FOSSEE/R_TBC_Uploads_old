mp =c(3,9,16,21,30,40,55,75,92)
year1 =c(7.6,12.8,5.3,10.8,17.3,15.1,18.6,11.3,1.2)
year2 =c(6.4,11.6,5.2,9.0,12.5,12.2,22.5,16.0,4.6)

mean1 =weighted.mean(mp,year1/100)
mean2 =weighted.mean(mp,year2/100)

sd1=sqrt(sum(((mp- mean1)^2)*year1/100))
sd2=sqrt(sum(((mp- mean2)^2)*year2/100))

cat("mean for year 1990s: ",mean1)
cat("mean for year 2050s: ",mean2)
cat("SD for year 1990s: ",sd1)
cat("SD for year 2050s: ",sd2)
