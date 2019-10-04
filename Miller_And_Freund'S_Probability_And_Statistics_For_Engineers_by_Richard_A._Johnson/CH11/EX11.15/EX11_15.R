influent<-c(250,290,270,100,300,410,110,130,1100)
effluent<-c(19,10,17,11,70,60,18,30,180)
#(a)make scatter plot
plot(influent,effluent)
#(b)log scatter plot
plot(log(influent),log(effluent))
#(c)
r1=cor(influent,effluent)
r1
r2=cor((influent),log(effluent))
r2
#d)
cat("hence r is not really appropriate for the original data ")