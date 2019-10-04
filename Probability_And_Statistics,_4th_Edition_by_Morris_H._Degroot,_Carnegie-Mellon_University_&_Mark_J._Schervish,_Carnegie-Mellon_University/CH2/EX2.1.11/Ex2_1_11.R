# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 62

# The two events be represented by 'B1' and 'B2'.
# Total events be represented by the vector named 'Total'.

Total<-c('B1','B2')

# Probability of each event.
# "paste0" function is used to combine numerical values and character strings for the purpose of printing them together.
# "length" function is used to find the number of elements present in a vector.

for(i in 1:length(Total))
{
  print(paste0("The probability of event ",Total[i]," happening is ", (length(Total[i])/length(Total))))
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.