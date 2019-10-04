#page no. 10-11
#example 1-4

#the solution to this problem depends on the choice of possible and favorable outcomes
#therefore we shall consider three celebrated cases

          #case I : maxwell-boltzmann statistics 

m_caseI=6
n_caseI=2
p_caseI=factorial(n_caseI)/(m_caseI^n_caseI)
print(p_caseI)


          #case II : bose-einstein statistics 

m_caseII=6
n_caseII=2
p_caseII= (factorial(m_caseII-1)*factorial(n_caseII))/(factorial(n_caseII + m_caseII - 1))
print(p_caseII)

          #case III : fermi-dirac statistics 

m_caseIII=6
n_caseIII=2
p_caseIII= (factorial(n_caseIII)*factorial(m_caseIII- n_caseIII))/factorial(m_caseIII)
print(p_caseIII)


