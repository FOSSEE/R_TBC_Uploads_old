#install.packages("MASS")
library(MASS)

#Tree Diagram(Pg no. 41)

D_and_F = 10/400
F = 40/400
D = 28/400
Dbar_and_F = 30/400
D_and_Fbar = 18/400
Dbar_and_Fbar = 342/400
Fbar = 1-F

D_given_F = D_and_F/F
D_given_F = fractions(D_given_F)
print("P(D|F) is")
print(D_given_F)

F_given_D = D_and_F/D
F_given_D = fractions(F_given_D)
print("P(F|D) is")
print(F_given_D)

Dbar_given_F = Dbar_and_F/F
Dbar_given_F = fractions(Dbar_given_F)
print("P(Dbar|F) is")
print(Dbar_given_F)

D_given_Fbar = D_and_Fbar/Fbar
D_given_Fbar = fractions(D_given_Fbar)
print("P(D|Fbar) is")
print(D_given_Fbar)

Dbar_given_Fbar = Dbar_and_Fbar/Fbar
Dbar_given_Fbar = fractions(Dbar_given_Fbar)
print("P(Dbar|Fbar) is")
print(Dbar_given_Fbar)

#The answer might slightly vary due to reducing of values