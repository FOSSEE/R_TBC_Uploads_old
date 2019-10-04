#PAGE NUMBER--2.39
#Example number--2.27

n=200
mean=40
s.d=15

s_x=n*mean
s_x 					# sum of xi
s_x2=n*(15^2+1600)
s_x2					# sum of xi^2

c_s_x= s_x-34-53+43+35
corrected_mean=c_s_x/n 
corrected_mean

c_s_x2= s_x2-34^2-53^2+43^2+35^2
corrected_s.d= sqrt(c_s_x2/n - corrected_mean^2)
corrected_s.d    			# corrected Standard deviation
