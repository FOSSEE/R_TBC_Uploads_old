#Factor Level
#From previous example variance is Ssquare=0.25
Ssquare=2394
t0.025=qt(1-0.025,12)
t0.025
#There for the confidence intervals for difference in mean due to the a=3 level of oven width,Factor are
ybar1=656.3
ybar2=574.7
ybar3=634.3
b=2
r=3
levelss<-function(x,y,a){
  Int1=x-y+(t0.025*sqrt((Ssquare*2)/a*r))
  Int2=x-y-t0.025*sqrt((Ssquare*2)/a*r)
  return(c(Int1,Int2))
}
Level1<-levelss(ybar1,ybar2,b)
Level1
Level2<-levelss(ybar1,ybar3,b)
Level2
Level3<-levelss(ybar2,ybar3,b)
Level3
#Concluesion:
message("Because the interation was significant, we cannot interpret on differences of mean coking time as due to changing over wIdth along")
#Signgle diffeence in mean due to the b=2 flue tem is
mean=levelss(552.4,691.1,3)
mean