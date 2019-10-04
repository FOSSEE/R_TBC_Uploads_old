#Page.No 6.11
#Page.No 6.11

data<-as.vector(c(10,8,7,15,18,19,20,28,16,13,17,29,30,6,5,4,26,24,14,21))
N<-length(data)

# ranking of scores
r<-rank(-data) # negative for rank the data in descending order
rank_matrix<-cbind(r,data)


# Rank of score 18
rank_matrix[5,]
R<-rank_matrix[5,1]

percentile_rank<-round(100-((100*R-50))/N,digits = 0)
cat("The percentile rank of 18 is approximately ",percentile_rank)

