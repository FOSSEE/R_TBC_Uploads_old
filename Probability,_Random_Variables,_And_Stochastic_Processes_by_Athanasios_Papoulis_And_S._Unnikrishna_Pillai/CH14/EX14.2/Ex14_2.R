#page no. 631
#example 14-2

hp=function(p){-p*log(p)-(1-p)*log(1-p)}

plot(hp,xlab="p",ylab = "h(p)")

print("The function h(p) is ploted for 0 <= p <= 1. This function is symmetrical, convex, even about the point p=0.5 and it reaches its maximum at that point. ")
print("furthermore, h(0)=h(1)=0")