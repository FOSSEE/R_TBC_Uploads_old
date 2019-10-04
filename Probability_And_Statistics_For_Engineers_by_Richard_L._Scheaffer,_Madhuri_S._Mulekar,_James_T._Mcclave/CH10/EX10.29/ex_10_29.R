#H0: The defective/nondefective classification is independent of machinist classification
#H1: The defective/nondefective classification depends on machinist classification

def= c(10,8,14)
not_def =c(52,60,56)

observed =as.data.frame(rbind(def,not_def))
names(observed) <- c('Machinst A','Machinist B','Machinist C')

stat= chisq.test(observed)$statistic

alpha=0.01
dof=(3-1)*(2-1)

#Using rejection region approach
p_value=1 -pchisq(stat,df=2,lower.tail = F)

if(p_value>alpha){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}
