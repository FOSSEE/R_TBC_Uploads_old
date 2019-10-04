#Alloy Adhesion(Pg no. 285)
obs = c(19.8,15.4,11.4,19.5,10.1,18.5,14.1,8.8,14.9,7.9,17.6,13.6,7.5,12.7,16.7,11.9,15.4,11.9,15.8,11.4,15.4,11.4)
ans = t.test(obs)

min = ans$conf.int[1]
max = ans$conf.int[2]
cat("The resulting 95% CI is",round(min,digits = 2),"<= u <= ",round(max,digits = 3))