X<-c(141, 162, 150, 111, 92, 74, 85, 95, 76, 68, 63, 74, 103, 81, 94, 68, 95, 81, 102, 73)
total = sum(X);
num = 20;
Xbar = mean(X);
lcl = Xbar - 3*sqrt(Xbar);
ucl = Xbar + 3*sqrt(Xbar);
cat("UCL is",ucl)
cat("LCL is",lcl)
for (i  in 1:20){
  if(X[i]> ucl){
    total = total - X[i]
    num= num -1
  }
}
Xbar = total/num
lcl = Xbar - 3*sqrt(Xbar);
ucl = Xbar + 3*sqrt(Xbar);
cat("After recomputation")
cat("UCL is",ucl)
cat("LCL is",lcl)
total = total - X[4]
num = num-1;
cat("Xbar is",Xbar)
cat(" is",X[4])
Xbar = total/num
lcl = Xbar - 3*sqrt(Xbar);
ucl = Xbar + 3*sqrt(Xbar);
cat("After second recomputation")
cat("UCL is",ucl);
cat("LCL is",lcl);
cat("It appears that the process is in control with mean",Xbar);

'The mean after the second recomputation is incoreectly calculated in the textbook. It should be 
((17*84.41)-111 )/16 = 82.748 whereas the value given in the book is 82.56. The values of UCL and LCL 
change accordingly.'