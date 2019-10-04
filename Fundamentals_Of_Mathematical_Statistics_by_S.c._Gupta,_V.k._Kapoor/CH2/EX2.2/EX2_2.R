#PAGE NUMBER--2.10
#Example number--2.2

A=28
h=8
Class_Interval=c("0-8","8-16","16-24","24-32","32-40","40-48")
mid=c((0+8)/2,(8+16)/2,(16+24)/2,(24+32)/2,(32+40)/2,(40+48)/2)
f=c(8,7,16,24,15,7)  			  # frequency
d=(mid-A)/h
fd=f*d
a=data.frame(Class_Interval,mid,f,d,fd)
a
mean=A + h* sum(fd)/sum(f)
mean