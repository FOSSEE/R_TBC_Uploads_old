years <- c(2010,2020,2030,2040,2050)
equal_85_and_over <- c(6.1,7.3,9.6,15.4,20.9)
par(mfrow=c(1,2))
plot(years,equal_85_and_over,type = "b")
plot(years,equal_85_and_over,ylim=c(0,100),type = "b")

