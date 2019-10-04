species1 <- c(235,225,190,188);
species2 <- c(180,169,180,185,178,182);
n1 <-length(species1);
n2 <- length(species2);
data <- c(species1,species2);
rank1 <- rank(sort(data))
t1 <- 7+8+9+10; 
t1_ <- n1 * (n1 + n2 + 1) - t1
t1_                                      #for n1=4 and n2=6, the critical value of T at alpha = 0.05 is 12 
if(t1_ <= 12){
  print("Reject the Null Hypothesis")
}else{
    print("Accept the Null Hypothesis")
  }
  
