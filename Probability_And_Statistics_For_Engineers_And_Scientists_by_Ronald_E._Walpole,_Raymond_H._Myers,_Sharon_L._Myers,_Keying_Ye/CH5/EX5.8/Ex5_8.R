
# Chapter 5
# example 5.8 page no. 153 from pdf..
# Hypergeometric Distribution In Acceptance Sampling..

# radom sampling, testing 3 of the parts out of 10
# condition - if none of the 3 is defective then the lot is accepted

# assume lot is truly unacceptable..
cat("The probability that the sampling plan finds the lot acceptable is",dhyper(0,m = 2,n = 8,k = 3))

cat("Thus if the lot is truly unacceptable with 2 defective parts, this sampling plan will allow acceptance roughly",dhyper(0,2,8,3)*100,"% of the time, so this plan should be considered faulty.")




