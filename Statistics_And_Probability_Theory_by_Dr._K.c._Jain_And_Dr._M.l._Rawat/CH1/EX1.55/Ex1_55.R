#Example 55 chapter 1 Page no 48
defective = 0.02
P_good_when_good = 0.95
P_def_when_def = 0.94
good=1-defective
P_def_when_good = 1-P_good_when_good
P_good_when_def = 1 - P_def_when_def
P_actuallydefective_reported_def = P_def_when_def*defective/(P_def_when_def*defective + 
                                                               P_def_when_good*good)
print(P_actuallydefective_reported_def)
