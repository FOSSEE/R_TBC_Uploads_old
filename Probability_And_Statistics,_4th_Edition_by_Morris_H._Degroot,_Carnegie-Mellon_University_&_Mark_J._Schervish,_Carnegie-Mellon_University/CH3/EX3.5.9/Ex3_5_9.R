# Chapter 3 - Random Variables and Distributions, Section - 3.5 (Marginal Distributions), Page No. - 138

# For the purpose of double integration it is required to install a package known as "pracma".
# It can be installed by executing the following command.

install.packages("pracma")

# After installing the package, it is required to be loaded by using the following command.
# For description of this package, type ?pracma in the console.

library(pracma)

# "integral2" function is used for the double integration of any function with 2 variables.
# For description of this function, type ?integral2 in the console.
# Let the required probability be represented by 'Pr'.

f<-function(x,y) 4*x*y
xmin<-c(0);
xmax<-c(1);
ymin<-c(0);
ymax<-function(x) 1-x;
Pr<-integral2(f, xmin, xmax, ymin, ymax)$Q
print(Pr)

# The answer may slightly vary due to being represented as a real number rather than a fraction.