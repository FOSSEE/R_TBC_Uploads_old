#  y has a normal distribution with mean =  160 and sd = 20.
#  the probability that a single blood pressure measurement will fail to detect that the patient has high blood pressure is <150
pnorm(150,mean =160,sd=20)
# If five blood pressure measurements are taken at various times during the day
sd <-20/sqrt(5)
 #  the probability that the average of the five measurements will be less than 150
pnorm(150,160,sd=8.94)
#  measurements would be required in a given day so that there
#is at most 1% probability of failing to detect that the patient has high blood pressure
standard_deviation=20
n=((-2.326*standard_deviation)/(150-160))^2
print(n)
# It would require at least 22 measurements in order to achieve
# the goal of at most a 1% chance of failing to detect high blood pressure.



