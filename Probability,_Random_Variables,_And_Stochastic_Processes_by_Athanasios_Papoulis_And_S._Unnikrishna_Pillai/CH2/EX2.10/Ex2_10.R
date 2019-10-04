#page no. 29
#example 2-10

total_outcomes=6
favourable_A=1   #favourable outcome for event A={f2}
favourable_M=3   #favourable outcome for event M={f2,f4,f6}

p_A=favourable_A/total_outcomes    #probability of occurrence of event A
p_M=favourable_M/total_outcomes    #probability of occurrence of event M

p_AM=p_A/p_M   #condition probability of event A after even M has happened 
print(p_AM)
