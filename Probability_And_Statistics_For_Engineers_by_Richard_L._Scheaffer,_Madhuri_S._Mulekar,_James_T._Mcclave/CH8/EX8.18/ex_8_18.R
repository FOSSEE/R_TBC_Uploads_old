defect =c(1,4,1,2,1,4,3,5,3,1,2,1)
hours =c(58.33,80.22,209.24,164.70,253.70,426.90,380.20,527.70,319.30,340.20,78.70,67.27)
part =1:12
dat = data.frame(part,defect,hours)
u_bar= sum(dat$defect)/sum(dat$hours)

ucl1=u_bar + 3*sqrt(u_bar/dat$hours[1]) 
ucl2=u_bar + 3*sqrt(u_bar/dat$hours[2])

u1 =dat$defect[1]/dat$hours[1]
u2 =dat$defect[2]/dat$hours[2]


#install the package qicharts for u chart

library(qicharts)
# Run the below  code ..
# u chart 
qic(defect,hours,
    x= part   ,
    data = dat,
    chart = 'u',
    xlab = 'Sample Number')
