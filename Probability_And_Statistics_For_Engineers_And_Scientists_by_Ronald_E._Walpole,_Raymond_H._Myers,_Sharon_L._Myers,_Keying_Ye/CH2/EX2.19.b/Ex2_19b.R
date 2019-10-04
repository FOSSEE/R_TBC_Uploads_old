# Chapter 2
# example 2.19b page no. 48 from the pdf..
# Permuation Problem..


# to select the number of ways to elect president and treasurer from 50 people if A(a particular student) will serve ,if he is president
# 2 cases first A becomes president and in that case 

cat("If A becomes president number of ways to select treasurer are ", 49)

a <- 49

# Second case if officers elected without A 

cat("The number of possible ways to select without A are" ,factorial(49)/factorial(47))

b <- factorial(49)/factorial(47)

cat("The total number of ways to select the officers in this case are", a+b)
