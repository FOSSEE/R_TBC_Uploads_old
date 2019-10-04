# WILCOXON MATCHEDPAIRS SIGNED RANK TEST  :

Worker <- c(1:20)
Before <- c(5,4,9,6,3,8,7,10,3,7,2,5,4,5,8,7,9,5,4,3)
After <- c(11,9,9,8,5,7,9,9,7,9,6,10,9,7,9,6,10,8,5,6)
d <- c(-6,-5,0,-2,-2,1,-2,1,-4,-2,-4,-5,-5,-2,-1,1,-1,-3,-1,-3)
Rank <- c(-19,-17,0,-9,-9,3.5,-9,3.5,-14.5,-9,-14.5,-17,-17,-9,-3.5,3.5,-3.5,-12.5,-3.5,-12.5)
Worker <- data.frame(Worker,Before,After,d,Rank)
Worker

# test statistic z value :
qnorm(.99,lower.tail = FALSE)

# T positive and negative using wilcox test function : 
wilcox.test(Worker$Before, Worker$After, paired=TRUE) 
wilcox.test(Worker$d, Worker$Rank, paired=TRUE) 

# T positive and negative using formula :
T_p <- 3.5+3.5+3.5
T_p
T_n <- 19 + 17 + 9 + 9 + 9 + 14.5 + 9 + 14.5 + 17 + 17 + 9 + 3.5 + 3.5 + 12.5 + 3.5 + 12.5 
T_n

T_min = min(T_p,T_n)
T_min

n = 19
T_mean = (n*(n+1))/4
T_mean

T_sd = sqrt((n*(n+1)*(2*n+1))/24)
T_sd

# observed z value :
z = (T_min - T_mean)/T_sd
z

# The observed z value (-3.41) is in the rejection region, so the analyst rejects the null hypothesis.
# The productivity is signi???cantly greater after the implementation of quality control 
# at this company. 