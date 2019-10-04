# Mean,sd and no. of observations for CO and SO2 are as follows:
CO =c(  37298.013 , 84369.21 ,3143)
SO2 =c( 5616.0483 , 18869.243 ,3143)

z_CO = (189966.99-CO[1]) /CO[2]
z_SO =  (91310.67-SO2[1]) /SO2[2]

cat("The z-score when  carbon monoxide emission estimates at 189,966.99 :",z_CO)
cat("The z-score when  sulfur dioxide emission estimates at 91,310.67 :",z_SO)
