plant1<-c(16, 18, 9, 22, 17, 19, 24, 8)
plant2<-c(22, 18, 26, 30, 25, 28)
X1= sum(plant1);
X2 = sum(plant2);
n =length(X1);
m= length(X2);
prob1 = 1 - pbinom(X1, X1+X2,(4/7),(3/7));
prob2 = pbinom(X1-1 ,X1+X2, 4/7, 3/7 );
cat(prob1, prob2)
pvalue = 2*min(prob1,prob2);
cat("The pvalue is",pvalue)