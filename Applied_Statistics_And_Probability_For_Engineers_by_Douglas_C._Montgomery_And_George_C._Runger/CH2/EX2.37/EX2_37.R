#Medical Diagnostic(Pg no. 55)

p_given_i = 0.99 #test signals positive with illness
n_given_i = 0.95 #test signals negative with illness
i = 0.0001 #illness in population

p_given_not_i = 0.05

i_given_p = (p_given_i*i)/((p_given_i*i)+(p_given_not_i*(1-i)))

cat(i_given_p,"is the probability that you have the illness given test is positive")
#The answer may slightly vary due to rounding off values