decscale<- function (x)
{
    vect <- apply(abs(x), 2, max)
    zvect <- ceiling(log10(vect))
    sc_fact <- 10^zvect
    scale(x, center = TRUE, scale = sc_fact)
}


print(decscale(iris[,1:4]))










