speed =c(340,570,340,570,340,570,340,570,440,440,440,440,305,635,440,440,440,440,305,635,440,440,440,440)
life =c(70,29,60,28,64,32,44,24,35,31,38,35,52,23,40,28,46,33,46,27,37,34,41,28)

pol <- data.frame(speed,life)

l1 <- lm(life~speed,data = pol)
c =coefficients(l1)
cat("Tool Life =",c[1]," + ",c[2],"Cutting Speed")

p_value =summary(l1)$coefficients[,4][2]
 
cat("Because the p-value <0.001, we reject H0 :beta1=0  and conclude that cutting speed contributes significant amount of information toward the prediction of tool life. ")
