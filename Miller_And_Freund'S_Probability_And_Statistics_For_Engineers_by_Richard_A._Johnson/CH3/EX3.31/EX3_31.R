B1= 1700#message is spam
B2=3300#message is normal
#A is words in the list
M=5000#TOtal messages
#Probability for spam message
PB1=B1/M
message("The Probability is: ",PB1)
#Probability for normal message
PB2=B2/M
message("The Probability is: ",PB2)
#Among the spam messages,1343 contain words in the list
B1IntA=1343
# from normal messages only 297 contain words in the list
B2IntA=297
#Conditional Probability
PAB1=B1IntA/B1#P(A|B1)
PAB2=B2IntA/B2#P(A|B2)
#There for by Bayes' Theorem
PB1A=(PAB1*B1)/(PAB1*B1+PAB2*B2)#P(B1|A)=P(A|B1)*P(B1)/(P(A|B1)*P(B1)+P(A|B2)*P(B2))
PB1A
print("Since the probability is large there for the message is spam")
