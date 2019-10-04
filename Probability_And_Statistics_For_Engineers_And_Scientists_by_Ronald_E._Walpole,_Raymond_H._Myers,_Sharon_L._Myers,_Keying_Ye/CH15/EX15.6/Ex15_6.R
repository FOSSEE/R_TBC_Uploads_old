
# Chapter 15
# example 15.6 page no.633 from the pdf..
# use a half replicate to study the effects of five factors each at 2 levels on some response..
# to perform analysis of variance on the data below testing all main effects for the significance at the 0.05 level..

response <- c(11.3,15.6,12.7,10.4,9.2,11.0,8.9,9.6,14.1,14.2,11.7,9.4,16.2,13.9,14.7,13.2)
treatment <- c("a","b","c","d","e","abc","abd","acd","bcd","abe","ace","ade","bce","bde","cde","abcde")
cat("The sum of squares and effects for the main effects are")

a <- sum(response)-2*sum(response[which(treatment %in% c("b","c","d","e","bcd","bce","bde","cde"))])

b <- sum(response)-2*sum(response[which(treatment %in% c("a","c","d","e","acd","ace","ade","cde"))])

c <- sum(response)-2*sum(response[which(treatment %in% c("b","a","d","e","abd","abe","ade","bde"))])

d <- sum(response)-2*sum(response[which(treatment %in% c("b","c","a","e","abc","abe","ace","bce"))])

e <- sum(response)-2*sum(response[which(treatment %in% c("b","c","d","a","abc","abd","acd","bcd"))])

cat("The sum of squares and effects for the main effects are")

cat("SSA=",a^2/16,"and A=",a/8)

cat("SSB=",b^2/16,"and B=",b/8)

cat("SSC=",c^2/16,"and C=",c/8)

cat("SSD=",d^2/16,"and D=",d/8)

cat("SSE=",e^2/16,"and E=",e/8)
