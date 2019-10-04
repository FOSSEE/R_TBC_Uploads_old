#H0 : mu2=mu3
#H1 : mu2 not= mu3
Class2 = c(253, 261, 258, 255, 256 )
Class3 = c(274, 275, 271, 277, 256 )

p_value= t.test(Class2,Class3)$p.value
if(p_value>alpha){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}

# Mean calculated for class III is incorrect and therefore gives the wrong answer.
