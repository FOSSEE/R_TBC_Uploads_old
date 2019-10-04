###Exammple 3.5.1 Pg.81
##Bayes theorem Refer Table for data

Yes_D = c(436,14)
No_Dbar = c(5,495)
dt = data.frame(Yes_D,No_Dbar,row.names = c("Positive_T","Negative_Tbar") )
dt
prob_D = 0.113
prob_Dbar = 1 - prob_D
condi_TD = dt[1,1]/sum(Yes_D)
condi_TDbar = dt[1,2]/sum(No_Dbar)
condi_TbarD = dt[2,1]/sum(Yes_D)
condi_TbarDbar = dt[2,2]/sum(No_Dbar)

condi_DT = (condi_TD*prob_D)/(condi_TD*prob_D + condi_TDbar*prob_Dbar) #Bayes theorem
condi_DT
##Predictive value of positive test result is very high

condi_DbarTbar = (condi_TbarDbar*prob_Dbar)/(condi_TbarDbar*prob_Dbar + condi_TbarD*prob_D) #Bayes theorem
condi_DbarTbar
##Predictive value of negative test result is very high


