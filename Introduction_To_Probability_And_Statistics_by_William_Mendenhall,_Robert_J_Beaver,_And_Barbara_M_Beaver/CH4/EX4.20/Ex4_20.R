s <- c("hh","ht","th","tt")
prob_a <- 1/2
prob_b <- 1/2
prob_a_and_b <- 1/4
if((prob_a * prob_b) == prob_a_and_b){
  print("events must be independent")
}else{
    print("events are not independent")
  } 