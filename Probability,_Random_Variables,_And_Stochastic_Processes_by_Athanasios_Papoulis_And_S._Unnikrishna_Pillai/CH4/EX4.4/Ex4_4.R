#page no. 76
#example 4-4


xfi=10i

f100=1    #since it contain of the fi's therefore it is a certain event 
f35=3/6   #since x<=35 will only include {f1,f2,f3} 
f30.1=3/6   #since x<=35 will only include {f1,f2,f3}
f30=3/6   #since x<=35 will only include {f1,f2,f3}
f29.99=2/6   #since x<=35 will only include {f1,f2}
cat("F(100)=",f100)
cat("F(35)=",f35)
cat("F(30.1)=",f30.1)
cat("F(30)=",f30)
cat("F(29.99)=",f29.99)

#distribution function of x is a staircase function as ploted below

x <- c(0,10,20,30,40,50,60) 
y=c(0,1/6,2/6,3/6,4/6,5/6,6/6)
plot(x, y, type = "S", ylab = "F(x)")
 