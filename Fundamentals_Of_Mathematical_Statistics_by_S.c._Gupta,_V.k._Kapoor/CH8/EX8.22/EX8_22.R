#Page number--8.20
#Example number--8.22

n=7
N=128
#CASE 1: When the coin is unbaised 
p=1/2
q=p
x=c(seq(0,7,1))
f=c(7,6,19,35,30,23,7,1)
fx=f*x
#a=(n-x)/(x+1)
a=c()
for(i in x){
	a[i+1]=(n-i)/(i+1)
}
#b=(n-x)/(x+1)*p/q
b=c()
for(i in x){
	b[i+1]=(n-i)/(i+1)*p/q
}
Expected_Frequency=c(1,1*7,7*3,21*5/3,35*1,35*3/5,21*1/3,7*1/7)
data.frame(x,f,fx,a,b,Expected_Frequency)

#CASE 2: When nature of coin is not known
mean=433/128
p=mean/n
q=1-p
p/q
x=c(seq(0,7,1))
#a=(n-x)/(x+1)
a=c()
for(i in x){
	a[i+1]=(n-i)/(i+1)
}
#b=(n-x)/(x+1)*p/q
b=c()
for(i in x){
	b[i+1]=(n-i)/(i+1)*p/q
}
Expected_Frequency=c(1.2593,1.259*6.546,2.805*8.243,1.558*23.129,0.935*36.05,.5611*33.715,.3117*18.918,.1336*5.897)
data.frame(x,f,fx,a,b,Expected_Frequency,round(Expected_Frequency))

#Part (iii)
f=c(128*.0625*.1663,8.591,128*.283,128*.184,128*.260,128*.146,128*.043,128*.0056)
data.frame(x,f,round(f))
Total=sum(round(f))
Total                            #Note that total is wrong in the book











