A <- c("a1","a1","a1","a2","a2")

B <- c("b1","b2","b2","b1","b1")

C <- c("c1","c1","c1","c1","c1")


D <- c("d1","d2","d1","d1","d1")


E <- c("e1","e1","e2","e2","e3")

#####TID List##########

print("Cuboid of AB")

print("TID List of a1 and b1")
M1 <- which("a1" == A)
M2<- which("b1" == B)

z1 <- Reduce(intersect, list(M1,M2))

print(length(z1))


print("List size:")
print(length(z1))


print("TID List of a1 and b2")

M3 <- which("a1" == A)
M4<- which("b2" == B)

z2 <- Reduce(intersect, list(M3,M4))
print(z2)

print("List size:")
print(length(z2))


print("TID List of a2 and b1")

M5 <- which("a2" == A)
M6<- which("b1" == B)

z3 <- Reduce(intersect, list(M5,M6))

print(z3)

print("List size:")
print(length(z3))

print("TID List of a2 and b2")

M7 <- which("a2" == A)
M8<- which("b2" == B)

z4 <- Reduce(intersect, list(M7,M8))

print(z4)

print("List size:")
print(length(z4))



#########################



print("Cuboid of DE")

print("TID List of d1 and e1")
M11 <- which("d1" == D)
M12<- which("e1" == E)

z11 <- Reduce(intersect, list(M11,M12))

print(length(z11))


print("List size:")
print(length(z11))


print("TID List of d1 and e2")
M13 <- which("d1" == D)
M14<- which("e2" == E)

z12 <- Reduce(intersect, list(M13,M14))

print(length(z12))


print("List size:")
print(length(z12))



print("TID List of d1 and e3")
M15 <- which("d1" == D)
M16<- which("e3" == E)

z13 <- Reduce(intersect, list(M15,M16))

print(length(z13))


print("List size:")
print(length(z13))


print("TID List of d2 and e1")
M17 <- which("d2" == D)
M18<- which("e1" == E)

z14 <- Reduce(intersect, list(M17,M18))

print(length(z14))


print("List size:")
print(length(z14))










