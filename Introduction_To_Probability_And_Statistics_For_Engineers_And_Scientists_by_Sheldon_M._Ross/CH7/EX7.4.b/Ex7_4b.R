tech1<-c(140, 136, 138, 150, 152, 144, 132, 142, 150, 154, 136, 142)
tech2<-c(144, 132, 136, 140, 128, 150, 130, 134, 130, 146, 128, 131, 137, 135)
num1= 12;
num2= 14;
mean1= mean(tech1);
mean2= mean(tech2);
alpha = 0.9;
S1 = var(tech1) 
S2 = var(tech2)
Sp = (((num1-1)*S1) + ((num2-1)*S2))/(num1+ num2 -2);
Sp= sqrt(Sp);
num= (1/num1)+(1/num2);
betaa = (1-alpha)/2;
tval = qt(1-betaa,num1+num2-2)
upperlim = mean1-mean2 + (tval*Sp)*sqrt(num);
lowerlim = mean1-mean2 - (tval*Sp)*sqrt(num);
cat("The 90% confidence interval is ",lowerlim, "to ", upperlim)
alpha = 0.95
betaaa = 1-alpha;
tval = qt(1-betaa,num1+num2-2)
lowerlim = mean1-mean2 - (tval*Sp)*sqrt(num);
cat("the upper confidence interval is",lowerlim," to infinity")