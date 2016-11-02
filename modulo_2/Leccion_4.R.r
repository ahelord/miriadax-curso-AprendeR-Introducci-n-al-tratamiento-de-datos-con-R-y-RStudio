x=1:12
matrix(x,nrow = 1)
matrix(x,ncol = 5,nrow = 5,byrow = TRUE)
matrix(1,nrow = 3,ncol = 3)
matrix(1:6, nrow=2)
matrix(1:6, nrow=3)
matrix(1:6, nrow=2, byrow=TRUE)
matrix(1:6, nrow=3, byrow=TRUE)
matrix(1:6, nrow=4) 
matrix(1, nrow=2, ncol=3)   
rbind(c(1,0,2),c(2,3,6),c(1,2,0))
cbind(c(1,0,2),c(2,3,6),c(1,2,0))
A=matrix(c(1,2,3,4), nrow=2)
A
cbind(A,c(5,6))
cbind(c(7,8),c(5,6),A)
cbind(A,A)
rbind(A,c(10,12))
rbind(A,A)
#VIdeo 2
M=matrix(c(1,3,5,2,3,6,2,9,8,4,2,5), nrow=3, byrow=TRUE)
M
M[2,4]  #Entrada (2,4)
M[3,1]  #Entrada (3,1)
M[1, ]  #Fila 1
M[1, , drop=FALSE] 
M[ ,3]
M[1:3,1:2]
M[ ,3, drop=FALSE]
M[c(1,2),c(1,3)] 
M[c(1,3), ] 
M[ ,c(2,3,4)] 
A=matrix(1:9, nrow=3, byrow=TRUE)
A 
diag(A)
B=matrix(1:10, nrow=2, byrow=TRUE)
B
diag(B)
# VIdeo 4.3
X=matrix(c(1,2,4,3,5,1,4,6,7,1,6,4), byrow=TRUE, nrow=2)
X
nrow(X)
ncol(X)
dim(X)
A=matrix(c(1,2,1,3,-1,3), nrow=2, byrow=TRUE)
A
sum(A)
mean(A)
A=rbind(c(1,2,3,2),c(2,5,3,1),c(4,1,2,4))
A
colSums(A)  
rowSums(A)  
colMeans(A)  
rowMeans(A)  
f=function(x){sqrt(sum(x^2))}
apply(A, MARGIN=1, FUN=f)  
A_ord=apply(A, MARGIN=2, FUN=sort)  
A_ord
sqrt(A)  
apply(A, MARGIN=c(1,2), FUN=sqrt)  
#VIdeo 4.4
A=matrix(c(1,2,1,3), nrow=2, byrow=TRUE)
A
B=matrix(c(-2,4,3,1,0,2), nrow=3, byrow=TRUE)
B
C=matrix(c(1,0,1,2,1,0), nrow=2, byrow=TRUE)
C
t(B) 
t(B)+C 
5*A 
C%*%B 
(C%*%B)%*%A 
A^2 
A%*%A  
A=rbind(c(1,2),c(3,4))
A
v=c(5,6)
A%*%v
v%*%A
v%*%v
v%*%t(v)
A=matrix(c(1,2,1,3), nrow=2, byrow=TRUE)
install.packages("Biodem",dep=TRUE)
library(Biodem)
mtx.exp(A, 20) 
install.packages("expm",dep=TRUE)
library(expm)
A%^%20 
Y=rbind(c(1,3,2),c(2,3,5),c(-1,3,2))
Y
det(Y)
A=matrix(c(3,10,30,100), nrow=2)
A
det(A)
X=matrix(c(0,1,0,-7,3,-1,16,-3,4), nrow=3, byrow=TRUE)
X
det(X)
qr(X)$rank
Y=rbind(rep(0,3),rep(1,3))
Y
qr(Y)$rank
A=matrix(c(1,3,4,0,2,-1,2,1,2), nrow=3, byrow=TRUE)
solve(A) 
A%*%solve(A) 
solve(A)%*%A 
A=matrix(c(1,6,-3,2,-1,1,1,1,-1), nrow=3, byrow=TRUE)
A
b=c(7,2,3)
solve(A, b)
#VIdeo 4.5
A=matrix(c(2,6,-8,0,6,-3,0,2,1), nrow=3, byrow=TRUE)
A
eigen(A)
str(eigen(A))
eigen(A)$values
eigen(A)$vectors
\begin{lstlisting}
diag(c(2,5,-1))
diag(3)
B=matrix(1:10, nrow=2, byrow=TRUE)
B
diag(B)
diag(diag(B))
D=diag(eigen(A)$values) 
D
P=eigen(A)$vectors 
P
P%*%D%*%solve(P)
A
B=matrix(c(0,1,0,-7,3,-1,16,-3,4), nrow=3, byrow=TRUE)
eigen(B)
#VIdeo 5
A=matrix(c(3-2i,5+3i,1+2i,2-1i), nrow=2, byrow=TRUE)
A
A%*%A
eigen(A)
b=c(2-1i,3)
solve(A, b)
det(A)
prod(eigen(A)$values)

