#PAGE NUMBER--2.8
#Example number--2.1

#Part (a)
x=c(1,2,3,4,5,6,7)
f=c(5,9,12,17,14,10,6) 			 # frequency
fx=f*x
a=data.frame(x,y,fx)
a
mean=(sum(fx))/sum(y)
mean



#Part (b)
Marks=c("0-10","10-20","20-30","30-40","40-50","50-60")
mid=c((0+10)/2,(10+20)/2,(20+30)/2,(30+40)/2,(40+50)/2,(50+60)/2)   	# mid values
f=c(12,18,27,20,17,6) 		 	 # frequency
fx=f*mid
b=data.frame(Marks,mid,f,fx)
b
mean=(sum(fx))/sum(f)
mean