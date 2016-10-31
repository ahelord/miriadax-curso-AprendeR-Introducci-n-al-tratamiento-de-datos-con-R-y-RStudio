# Definir vectores en R
#1. c de concatenar en un vector e un mismo tipo 
#palabras entre comillas ya no entiende las letras SOLAS.
# si dentro de la concatenacion hay diferentes tipos
# R escoge el tipo mas general
# 2. scan permite leer o importar dato
# 3. para vectores especificos: req seq
# 3.1 rep permite construir vectores repitiendo datos o vectores
# rep(x,n) vector formado por n copias de x
# parametros al aplicarla en vectores
# rep (vector,times=n) : repite n veces el vector en bloque
# rep (vector,each=n) : repite n veces cada entrada del vector
# para repetir la cantidad de entradas diferente se usa
# rep(c(1,2,3,4),times=c(5,10,15,4))
#3.2  seq permite construir progresiones aritmeticas
# Usos basicos
# seq(a,b,by=r): de a a b con paso r
# seq(a,by=r,length.out=n) : a partir de a, de longitud n con paso r
Ahelord648618Leonardo
x=c(1,2,3,4)
ABC=c("a","b","c")
c(x,ABC,200)
rep("a",100)
rep(x,times=100)
rep(x,each=100)
rep(c(1,2,3,4),times=c(5,10,15,4))
seq(0,120,by=5)
seq(0,123,by=5)
seq(100,17,by=-5)
20:0
0:20
seq(0,by=5,length.out = 20