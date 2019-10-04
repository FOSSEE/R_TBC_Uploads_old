#A system consists of 5 independent components in series, each having a reliability of 0.970
n=5#No of Component
R=0.97# reliability of component
#The  reliability of System wIth n component
message("System  reliability is : ",R^5)
#Increasing system complexity to 10 components will decrease the system reliability to
message("System  reliability of 10 component is",R^10)
print("There for to make  reliability equal we have to take  reliability of components is 0.985")
