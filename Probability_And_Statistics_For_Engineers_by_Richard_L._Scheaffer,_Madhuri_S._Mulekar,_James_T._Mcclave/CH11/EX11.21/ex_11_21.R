speed =c(340,570,340,570,340,570,340,570,440,440,440,440,305,635,440,440,440,440,305,635,440,440,440,440)
life =c(70,29,60,28,64,32,44,24,35,31,38,35,52,23,40,28,46,33,46,27,37,34,41,28)
feed =c(0.00630,0.00630,0.01410,0.01416,0.00630,0.00630,0.01416,0.01416,0.00905,0.00905,0.00905,0.00905,0.00905,0.00905,0.00472,0.01732,
        0.00905,0.00905,0.00905,0.00905,0.00472,0.01732, 0.00905, 0.00905)
depth =c(0.02100,0.02100,0.02100,0.02100,0.02100,0.04000,0.04000,0.04000, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900,
         0.01350, 0.04550,0.02900,0.02900,0.02900,0.02900, 0.01350,0.04550 )

dat= data.frame(life,speed,feed,depth)
fit =lm(life~speed+feed+depth)
#a
cor(dat)

#b
x=summary(fit)
coef= coefficients(x)
cat("the leastsquares equation : Tool life = ",coef[1],coef[2],"Speed  ",coef[3],"Feed rate  ",coef[4],"Depth of cut")


#c
y =data.frame(depth=0.03,speed=450,feed =0.01)
              
val= predict(fit,y,interval = "confidence")
cat(" A tool that is used to cut depths of 0.03 inch at a speed of 450 fpm with a feed rate of 0.01 ipr is expected to last on the average ",val[1])
cat(" we are 95% confident that the mean life of such a tool used to cut depths of 0.03 inch at a speed of 450 fpm with a feed rate of 0.01 ipr will be between",val[2],"-",val[3])
