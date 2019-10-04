n=3
#number of significant figures
es=0.5*(10^(2-n))
#percent, specified error criterion
x=0.5;
f = matrix(0,1)
f[1]=1
#first estimate f=e^x = 1
ft=1.648721
#true value of e^0.5=f
et = matrix(0,1)
et[1]=(ft-f[1])*100/ft
ea = matrix(0,1)
ea[1]=100;
i=2
while (ea[i-1]>=es){
  f[i]=f[i-1]+(x^(i-1))/(factorial(i-1))
  et[i]=(ft-f[i])*100/ft
  ea[i]=(f[i]-f[i-1])*100/f[i]
  i=i+1
}
for (j in 1:i-1){
  cat("term number=",j,"\n","Result=",f[j],"\n","True % relative error=",et[j],"\n","Approximate estimate of error(%)=",ea[j],"\n")
  cat("---------------------------------------------------------------\n")
}