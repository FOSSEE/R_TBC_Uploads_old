# Example : 1   Chapter : 10.1     Page No: 496
# r of complex numbers
rad2deg <- function(rad) {
  (rad * 180) / (pi)
}
z<-complex(real=1,imaginary=1)
z1<-Conj(z)
print("r of z and its conjugate are")
print(Mod(z))
print(Mod(z1))
print("The argument of z and its conjugate in degrees are")
print(paste(rad2deg(Arg(z)),"degrees")) # in radians which is equal to 45 degree
print(paste(rad2deg(Arg(z1)),"degrees"))
