
# Chapter 15
# Example 15.1 page no. 601 from the pdf..
# 2^2 factorial Experiment..

# 2^2 factorial with no interaction 
obs <- c(50,70,80,100)

a_no <- c(rep(1,2),rep(-1,2))

b_no <- c(rep(c(-1,1),2))

cat("The main effects are A =",(sum(obs[1:2])-sum(obs[3:4]))/2)

cat("B = ",(obs[4]+obs[2])/2-(obs[1]+obs[3])/2)

cat("The interaciton effect is",(obs[1]+obs[4])/2-(obs[2]+obs[3])/2)

obs1 <- c(50,70,80,40)

cat("The interaction effect in this case is",(obs1[2]+obs1[3])/2-(obs1[1]+obs1[4])/2)

