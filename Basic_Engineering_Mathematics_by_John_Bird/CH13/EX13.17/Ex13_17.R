#page no . 120
#problem 17
# formula used : matrix multiplication
#                x = A(inverse) * B
#given: c = a+bt


    #case 1
    c1 = 52
    t1 = 100
    #eq1 = (52 = a + 100b)
    #case 2
    c2 = 172
    t2 = 400
    #eq2 = (172 = a+400b)
    
# for solving a and b, form matrix
    A = array(data = c(1,1,100,400),dim = c(2,2))
    B = c(52,172)
    
    solve(A,B) #value of a and b respectivily
    