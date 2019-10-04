#PAGE NUMBER--2.56
#Example number--2.43

A=135
h=10
Scores=c("50-60","60-70","70-80","80-90","90-100","100-110","110-120","120-130",
"130-140","140-150","150-160","160-170","170-180","180-190","190-200",
"200-210","210-220","220-230")
f=c(1,0,0,1,1,2,1,0,4,4,2,5,10,11,4,1,1,2)
mid=c((50+60)/2,(60+70)/2,(70+80)/2,(80+90)/2,(90+100)/2,(100+110)/2,
(110+120)/2,(120+130)/2,(130+140)/2,(140+150)/2,(150+160)/2,(160+170)/2,
(170+180)/2,(180+190)/2,(190+200)/2,(200+210)/2,(210+220)/2,(220+230)/2)
d=(mid-A)/h
fd=f*d
fd2=fd*d
fd3=fd2*d
fd4=fd3*d
data.frame(Scores,mid,f,d,fd,fd2,fd3,fd4)

# Raw Moments of variable d about origin
U1=sum(fd)/sum(f); U1
U2=sum(fd2)/sum(f); U2
U3=sum(fd3)/sum(f); U3
U4=sum(fd4)/sum(f); U4

# Central Moments of variable X
u2= (U2-U1^2)*h^2; u2
u3= (U3-3*U2*U1+2*U1^3)*h^3; u3
u4= (U4-4*U3*U1+6*U2*U1^2 -3*U1^4)*h^4; u4

# Sheppard's Corrections for Moments 

u2b=u2-h^2/12; u2b
u3b=u3; u3b
u4b=u4 - h^2/2*u2 + 7/240*h^4; u4b

# Moment coefficient of skewness
y1= u3/(u2)^(3/2); y1

# Moment coefficient of kurtosis
b2= u4/u2^2; b2

sprintf("The distribution is leptokurtic")










