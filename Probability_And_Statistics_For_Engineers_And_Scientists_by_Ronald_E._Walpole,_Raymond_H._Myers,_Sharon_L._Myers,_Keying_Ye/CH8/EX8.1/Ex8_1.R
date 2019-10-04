
# Chapter 8
# Example 8.1 page no. 228 from the pdf..
# Sample Mode Evaluation..

# to find the mode of the given data
mod <- function(v){
  
  a <- unique(v)
  a[which.max(tabulate(match(v,a)))]
  
  
}
set <- c(0.32,0.53,0.28,0.37,0.47,0.43,0.36,0.42,0.38,0.43)

cat("The sample mode is",mod(set))


