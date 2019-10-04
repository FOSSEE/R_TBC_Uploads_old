#H0 : muD=0 that is, that there is no difference in the mean gain by modified and conventional systems
#H1 : muD not=0 , that is, that the mean gain by the modified system differs from the mean gain by the conventional system

M= c( 1.776, 1.637 ,1.554, 1.460 ,1.405)
C= c(1.901, 1.730 ,1.629 ,1.517 ,1.451)
p_value= t.test(M,C,paired = TRUE,alternative = "two.sided")$p.value

if(p_value <0.05){
  cat("Null hypothesis is rejected")
} else{
  cat("Null hypothesis is accepted")
}
