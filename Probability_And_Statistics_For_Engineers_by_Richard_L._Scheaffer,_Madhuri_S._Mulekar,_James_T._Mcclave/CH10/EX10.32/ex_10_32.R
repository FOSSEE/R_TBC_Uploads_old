data =c(0.3780, 0.5090, 0.6230 ,0.6860 ,0.7350 , 0.7520, 0.7580, 0.8690, 0.8890, 0.8890, 0.8990, 0.9370, 0.9820 ,1.0220 ,1.0370 , 1.0880, 1.1230 ,1.2060, 1.3340 ,1.4230
)

ks.test(data,"pnorm",mean(data),sd(data))

# the answers are different from those given in the book.