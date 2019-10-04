#Example 3 chapter 5 page no. 201
min=0   #arrival at 9:00 AM
max=30   #arrival at 9:30 AM
px10to15 = punif(15-10,min,max)
px25to30 = punif(30-25,min,max)
pwait5min = px10to15 + px25to30
print(pwait5min)
px0to5 = punif(5-0,min,max)
px15to20 = punif(20-15,min,max)
pwait10min = px0to5 +px15to20
print(pwait10min)
