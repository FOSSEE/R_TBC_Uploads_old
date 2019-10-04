#Hospital schedule(Pg no. 24)

knee_surgery = 3
hip_surgery = 2
sequences = factorial(knee_surgery+hip_surgery)/(factorial(knee_surgery)*factorial(hip_surgery))

cat(sequences,"sequences are possible")