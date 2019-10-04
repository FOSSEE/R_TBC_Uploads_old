#Number of AQI exceedences for 1990, 1998, and 2006

year1 =c(42,0,5,0,9,11,51,2,161,15,39,18,0,2,14)
year2 =c(50,0,10,24,7,17,38,14,49,14,37,39,0,3,44)
year3 =c(18,1,5,13,6,6,18,11,34,11,18,36,2,5,18)


dat=data.frame(year1,year2,year3)
library(ggplot2)

plot1= ggplot(dat,aes(x=year1)) + geom_dotplot(dotsize = 0.75,binwidth = 3.5) +xlab("1990")
plot2= ggplot(dat,aes(x=year2)) + geom_dotplot(dotsize = 0.75,binwidth = 3.5) + xlim(0,150) +xlab("1998")
plot3= ggplot(dat,aes(x=year3)) + geom_dotplot(dotsize = 0.75,binwidth = 4.0) + xlim(0,150) +xlab("2006")

library(grid)
grid.newpage()
grid.draw(rbind(ggplotGrob(plot1), ggplotGrob(plot2),ggplotGrob(plot3), size = "last"))

#Number of AQI exceedences by city


boston =c(0,0,0,0,0,0,0,0,0,4,0,3,9,8,1,4,1)
houston =c(51,36,32,27,38,65,26,46,38,51,42,28,21,31,22,28,18)
Newyork =c(15,30,4,11,13,17,11,22,14,22,19,19,27,11,6,15,11)

dat1=data.frame(boston,houston,Newyork)


plot4= ggplot(dat1,aes(x=boston)) + geom_dotplot(dotsize = 0.75,binwidth = 1.0)  +xlab("Boston") +xlim(0,70) 
plot5=  ggplot(dat1,aes(x=houston)) + geom_dotplot(dotsize = 0.5,binwidth = 1.5) +xlab("Houston") +xlim(0,70)
plot6= ggplot(dat1,aes(x=Newyork)) + geom_dotplot(dotsize = 0.5,binwidth = 1.5) +xlab("New York") +xlim(0,70)

grid.newpage()
grid.draw(rbind(ggplotGrob(plot4), ggplotGrob(plot5),ggplotGrob(plot6), size = "last"))


