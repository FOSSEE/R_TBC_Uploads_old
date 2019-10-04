##Chapter 16 : Queuing Systems
##Example 4-1 : Page 629

#birth-rate per day
lambdaday=24*60/12
#birth-rate per year
lambdayear=lambdaday*365
#probability of no births during a day
P=((lambdaday*1)^0 * exp(-120*1))/factorial(0)
P
#probability of issuing 50 birth certificate in 3 hrs given that 40 certificates were issued during the first 2 hrs off 3 hr period
P1=((60/12 *1)^10 *exp(-5*1))/factorial(10)
P1