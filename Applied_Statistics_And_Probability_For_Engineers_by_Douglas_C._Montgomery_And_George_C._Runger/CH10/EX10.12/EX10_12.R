#Parallel Park Cars(Pg no. 403)

x1 = c(37.0,25.8,16.2,24.2,22.0,33.4,23.8,58.2,33.6,24.4,23.4,21.2,36.2,29.8)
x2 = c(17.8,20.2,16.8,41.4,21.4,38.4,16.8,32.2,27.8,23.2,29.6,20.6,32.2,53.8)
ans = t.test(x1,x2,conf.level = 0.9, paired = TRUE)
ans
l1 = ans$conf.int[1]
l2 = ans$conf.int[2]

cat(l1,"<= uD <=",l2)

#The answer may slightly vary due to rounding off of values