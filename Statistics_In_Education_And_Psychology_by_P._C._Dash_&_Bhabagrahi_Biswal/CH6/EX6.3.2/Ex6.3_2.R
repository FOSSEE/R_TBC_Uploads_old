# Page No.6.12

data<-as.vector(c(65,59,46,32,25,15,14,10,9,7,5,3))
N<-length(data)

# ranking of scores
r<-rank(-data) # negative for rank the data in descending order
rank_matrix<-cbind(r,data)


# Rank of score 18
rank_matrix[5,]
R<-rank_matrix[5,1]

percentile_rank<-100-((100*R-50))/N
cat("The percentile rank of 18 is approximately ",percentile_rank)
