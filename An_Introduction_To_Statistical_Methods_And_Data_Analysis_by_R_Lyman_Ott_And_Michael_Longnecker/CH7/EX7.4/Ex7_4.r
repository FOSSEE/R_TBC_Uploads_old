#the upper .025 percentile for the F distribution with df1 = 10 and df2 =7 is

upper_percentile=qf(1-0.025,10,7)
lower_percentile=1/upper_percentile
print(lower_percentile)
