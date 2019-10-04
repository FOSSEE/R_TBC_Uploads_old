patrollers = 5
station_officers = 2
reserve = 3

ans = factorial(patrollers + station_officers + reserve) / (factorial(patrollers) * factorial(station_officers) * factorial(reserve))

print(ans)