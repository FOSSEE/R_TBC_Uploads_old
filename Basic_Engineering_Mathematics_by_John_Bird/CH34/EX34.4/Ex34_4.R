#page no. 364
#problem 4
#given:
prob_temp = 1/20#probability of failing due to temperature 
prob_vib = 1/25 #probability of failing due to vibration
prob_hum = 1/50 #probability of failing due to humidity

#part(a)
prob_a = prob_temp * prob_vib # fails--> temperature and vibration 
print(prob_a)

#part(b)
prob_b =prob_vib + prob_hum # fails--> humidity or vibration
print(prob_b)

#part(c)
prob_c = (1-prob_temp) * (1-prob_hum) # NOT_fails--> temperature and humidity
print(prob_c)