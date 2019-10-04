A <- c("a1","a1","a1","a2","a2")

B <- c("b1","b2","b2","b1","b1")

C <- c("c1","c1","c1","c1","c1")


D <- c("d1","d2","d1","d1","d1")


E <- c("e1","e1","e2","e2","e3")

#####TID List##########

print("TID List of a1")
print(which("a1" == A))

print("TID List of a2")
print(which("a2" == A))

print("TID List of b1")
print(which("b1" == B))


print("TID List of b2")
print(which("b2" == B))




print("TID List of c1")
print(which("c1" == C))

print("TID List of d1")
print(which("d1" == D))



print("TID List of e1")
print(which("e1" == E))


print("TID List e2")
print(which("e2" == E))


print("TID List of e3")
print(which("e3" == E))

##### List Size###############

a1 <-length(grep("a1", A))

print("List size of a1")
print(a1)

a2 <-length(grep("a2", A))

print("List size of a2")

print(a2)

b1 <-length(grep("b1", B))


print("List size of b1")
print(b1)

b2 <-length(grep("b2", B))


print("List size of b2")
print(b2)


c1 <-length(grep("c1", C))


print("List size of c1")
print(c1)


d1 <-length(grep("d1", D))


print("List size of d1")
print(d1)




d2 <-length(grep("d2", D))


print("List size of d2")
print(d2)


e1 <-length(grep("e1", E))


print("List size of e1")
print(e1)



e2 <-length(grep("e2", E))


print("List size of e2")
print(e2)



e3 <-length(grep("e3", E))


print("List size of e3")
print(e3)


















