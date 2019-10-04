                                     # Page no. : 157 - 158

# Probabilities Assigning Example

x <- c(2,2,2,3,3,3,4,4,4)   
y <- c(6,7,8,6,7,8,6,7,8)   

z = list()

for(i in 1:length(x))
{
  z[i] <- list(c(x[i],y[i]))   
}

past_project <- c(6,6,2,4,8,2,2,4,6)   

DF <- data.frame(x,y,I(z),past_project)   

past_project_sum <- sum(DF$past_project)   

p <- DF$past_project / past_project_sum   

DF <- cbind(DF,p)

total_probability <- sum(DF$p)

cat("Total probability for the Sample Point is",total_probability)

View(DF)