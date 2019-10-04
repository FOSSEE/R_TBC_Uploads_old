#Example 14 ,section 2.2, page 144
#Consider the digraph in figure 2.14, and verify A(G)+[A(G)]^2 +[A(G)]^3 + [A(G)]^4 = E to show that digraph is strongly connected.


library(igraph)
simple.graph<- graph_from_literal(P1-+P2,P2-+P3,P3++P4, P2-+P4,P3-+P5,P5-+P4,P1++P4,P5-+P2)
plot.igraph(simple.graph)
A<-get.adjacency(simple.graph)
square=A%*%A
cube= square%*% A
fourth= cube%*% A
solution<- A + square + cube + fourth
print(solution) 

check = function(M)
{
  y<-0
  count<-0
  M<-matrix(1:25,nrow=5,ncol=5)
  
  for(num in M)
      if(num>0)
       {
        count=count+1
            if(count==25)
            { 
              print("Matrix is strongly connected")
              y<-TRUE 
            }
            else
            { next }
        }
      else
      {
        print("Matrix is not connected strongly")
        break
      }
  
  return(y)
  
}

check(solution) #returns true if all entries of matrix are non zero,hence verified that matrix is strongly connected . 


