#PAGE NUMBER--2.27
#Example number--2.17

#Average speed

avg.s=function(){
	#let the distance between home and college is x kms.
	x=1
	#speed from home to college
	a=x/10
	#speed from  college to home
	b=x/15
	AverageSpeed=2*x/(a+b)
	sprintf("Your average speed is: %s",AverageSpeed)
}
avg.s()


