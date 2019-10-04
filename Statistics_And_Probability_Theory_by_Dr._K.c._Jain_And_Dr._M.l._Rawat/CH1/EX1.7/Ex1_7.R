#Example 7 Chapter 1 
P_Student_fail_in_Physics=0.3
P_Student_fail_in_Maths=0.25
P_fail_inboth=0.1
P_fail_in_M_failed_in_P = P_fail_inboth/P_Student_fail_in_Physics
print(P_fail_in_M_failed_in_P)
P_fail_in_M_or_P = P_Student_fail_in_Maths + P_Student_fail_in_Physics -P_fail_inboth
print(P_fail_in_M_or_P)
                                                                                               