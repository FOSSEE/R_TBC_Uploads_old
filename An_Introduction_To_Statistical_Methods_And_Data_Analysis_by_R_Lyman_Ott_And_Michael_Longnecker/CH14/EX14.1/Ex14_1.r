#  we obtain a random permutation of the numbers 1 to 16.
x=sample(1:16)
# We thus obtain the assignment of paints to the highway sections
values=c("P1","P1","P1","P1","P2","P2","P2","P2","P3","P3","P3","P3","P4","P4","P4","P4")
cbind(x,values)