# Chapter 3 - Random Variables and Distributions, Section - 3.4 (Bivariate Distributions), Page No. - 122

# For the purpose of double integration it is required to install a package known as "pracma".
# It can be installed by executing the following command.

install.packages("pracma")

# After installing the package, it is required to be loaded by using the following command.
# For description of this package, type ?pracma in the console.

library(pracma)

# "integral2" function is used for the double integration of any function with 2 variables.
# For description of this function, type ?integral2 in the console.
# Required value of the constant in the function as shown in textbook is determined by a variable 'c'.
# For the purpose of calculating 'c', it is not included in the function definition below, in order to support calculation operations in R.

f<-function(x,y) x^2*y
xmin<-c(-1);
xmax<-c(1);
ymin<-function(x) x^2;
ymax<-c(1);
c<-1/(integral2(f, xmin, xmax, ymin, ymax)$Q)
print(c)

# The answer may slightly vary due to being represented as a real number rather than a fraction.