# Z value for Type II error

z_c = 1.96
p = .40
q =1-p
n = 250
# z_c = (p_c-p)/sqrt(p*q/n)
p_c = z_c*sqrt((p*q)/n)+p
p_c
p_c1 = z_c*sqrt((p*q)/n)-p
p_c1

# z value on taking p_c = .46 and p = .36 :
p_c = .46 
p = .36
z_c = (p_c-p)/sqrt(p*q/n)
z_c

# z value on taking p_c = .34 and p = .36 :
p_c = .34
p = .36
z_c = (p_c-p)/sqrt(p*q/n)
z_c

# The area associated with z = 3.29 is .4995.Combining this value with the .2454 obtained from the left side of the distribution in graph (b) yields the total probability of committing a Type II error:
 .2454+.4994 