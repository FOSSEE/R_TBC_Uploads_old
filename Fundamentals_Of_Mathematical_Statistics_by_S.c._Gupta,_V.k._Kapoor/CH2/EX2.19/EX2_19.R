#PAGE NUMBER--2.28
#Example number--2.19

speed=c(60,25,350,25)
distance=c(900,3000,400,15)
wx=round(distance/speed,2)
data.frame(speed,distance,wx)

avg.sp= sum(distance)/sum(wx)  	#Average Speed

#Answer is little varying as of rounding off

avg.sp