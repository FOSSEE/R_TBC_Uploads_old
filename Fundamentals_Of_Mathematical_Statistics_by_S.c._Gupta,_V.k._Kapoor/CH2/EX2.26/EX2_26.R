#PAGE NUMBER--2.38
#Example number--2.26

A=55
h=10
Age_group=c("20-30","30-40","40-50","50-60","60-70","70-80","80-90")
mid=c((20+30)/2,(30+40)/2,(40+50)/2,(50+60)/2,(60+70)/2,(70+80)/2,(80+90)/2)
f=c(3,61,132,153,140,51,2)
d=(mid-A)/h
fd=f*d
fd2=fd*d

mean= A + h*sum(fd)/sum(f)
mean

s.d=sqrt(100*(765/542-0.028^2))
s.d 			  				# Standard Deviation
