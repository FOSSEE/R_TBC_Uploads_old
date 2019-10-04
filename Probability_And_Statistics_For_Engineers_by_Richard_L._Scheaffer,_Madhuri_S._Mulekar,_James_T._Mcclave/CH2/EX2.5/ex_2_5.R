year=c(1970,1975,1980:1999)
Car =c(67.8,74.3,70.2,69.3,69.3,70.5,70.8,71.7,73.4,73.5,73.5,74.1,69.8,64.5,65.6,67.2,68.1,68.1,69.2,69.9,71.7,73.2)
Van =c(12.3,19.1,23.8,23.7,22.7,23.9,25.6,27.4,29.1,30.6,32.7,33.3,35.6,38.2,40.9,42.9,44.1,45.6,47.4,49.4,50.5,52.8)

#Graph for fuel consumption
plot(year,Car,ylim = c(10,80),ylab = "Fuel Consumption",xlab = "Year" )
lines(year,Car)
par(new =TRUE)
plot(year,Van,ylim = c(10,80),ylab = "Fuel Consumption",xlab = "Year")
lines(year,Van)

Car1 =c(13.5,14.0,16.0,16.5,16.9,17.1,17.4,17.5,17.4,18.0,18.8,18.0,20.3,21.2,21.0,20.6,20.8,21.1,21.2,21.5,21.6,21.4)
Van1 =c(10.0,10.5,12.2,12.5,13.5,13.7,14.0,14.3,14.6,14.9,15.4,16.1,16.1,17.0,17.3,17.4,17.3,17.3,17.2,17.2,17.2,17.1)

#Graph for fuel efficiency
plot(year,Car1,ylim = c(10,30),ylab = "Miles per gallon",xlab = "Year" )
lines(year,Car1)
par(new =TRUE)
plot(year,Van1,ylim = c(10,30),ylab = "Miles per gallon",xlab = "Year")
lines(year,Van1)

