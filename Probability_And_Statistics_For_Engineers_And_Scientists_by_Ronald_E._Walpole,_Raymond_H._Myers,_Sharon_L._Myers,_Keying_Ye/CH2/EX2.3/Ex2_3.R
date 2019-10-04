# Chapter 2
# Example 2.3 page no. 37 from the pdf..
# to find the sample space.

a <- c(rep("D",2),rep("N",2))      

b<- c("D", "N")

c <- c(rep("D",4),rep("N",4))
 
# final answer
print("The sample space is: ")
paste(c,rep(paste(a,rep(b))))      #merging in specific order to find the sample space.