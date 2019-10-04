#H0 : p1=4/7,p2=2/7,p3=1/7
#H1 : The proportions differ from those indicated in the null hypothesis. 

X=c(20,16,14)
p=c(4/7,2/7,1/7)
n=50
EX=n*p
alpha=0.05

stat= sum(((X-EX)^2)/EX)
compare= qchisq(1-alpha,df=2,lower.tail = T)


if(stat<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}
