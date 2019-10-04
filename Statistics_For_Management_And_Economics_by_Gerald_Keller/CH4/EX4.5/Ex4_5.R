# Statistics for Management and Economics by Gerald Keller
# Chapter 4: Numerical Descriptive Techniques
# Example 4.5 on Pg 102
# Mode Time Spent on Internet 

Internet_hours <- c(0, 7, 12, 5, 33, 14, 8, 0, 9, 22)

# there is no inbuilt function for calculating Mode
# So, a function is written to compute Mode. It works if the data is numeric.
# It creates a frequency table using the function table() and gives the index of the value occuring maximum
# times using the function which.max().
Mode <- function(x) 
{
  if (is.numeric(x)) 
  {
    x_table <- table(x)
    return(as.numeric(names(x_table)[which.max(x_table)]))
  }
}

Mode(Internet_hours)

#Answer: sample mode is 0

#End