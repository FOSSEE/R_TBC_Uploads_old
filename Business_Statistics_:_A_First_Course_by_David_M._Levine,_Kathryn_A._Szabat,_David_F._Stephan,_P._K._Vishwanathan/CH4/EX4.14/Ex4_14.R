#counting Rule (Permutation)


counting <- function(n, r){
  return( factorial(n) / factorial(n - r))
}

#have 6 elements, choosing 4 at a time
counting(6,4)


