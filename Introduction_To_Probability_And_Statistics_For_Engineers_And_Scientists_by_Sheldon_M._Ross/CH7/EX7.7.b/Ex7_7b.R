estimate <- function(d, sigma) {
  sigmainv = 1/sigma
  new = d/sigma
  result1 = sum(new)/sum(sigmainv)
}

mserror <- function(sigma) {
  sigmainv = 1/sigma
  result1 = 1/sum(sigmainv)
}