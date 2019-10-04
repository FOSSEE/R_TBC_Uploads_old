#Page number--14.26
#Example number--14.18

#H0: u=30.5
#H1: u<30.5 (Left-tailed test)

AgeLastBirthday=c("16-20","21-25","26-30","31-35","36-40")
f=c(12,22,20,30,16)
midx=c((16+20)/2,(25+21)/2,(26+30)/2,(31+35)/2,(36+40)/2)
d=(midx-28)/5
a=f*d
b=f*d^2
data.frame(AgeLastBirthday,f,midx,d,a,b)

u=30.5
x=28+5*16/100
s=5*sqrt(164/100-(16/100)^2)

z=abs((x-u)/sqrt(s^2/100))
z
if(z>1.645) print("Reject H0 hypothesis")