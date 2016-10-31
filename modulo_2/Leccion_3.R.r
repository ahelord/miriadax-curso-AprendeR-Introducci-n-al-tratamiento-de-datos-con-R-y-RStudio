x=c(1,5,6,2,5,7,8,3,5,2,1,0)
x
nombres=c("Pep","Catalina","Joan","Pau")
nombres
nombres=c(Pep,Catalina,Joan,Pau) #Si se nos olvidan las comillas...
c(2,3.5,TRUE,"casa")
x_scan=scan()  
1 5 6 2 5 7 8 3 5 2 1 0
1 5 6 2 5 7 8 3 5 2 1 0
x_scan
notas=scan("http://aprender.uib.es/Rdir/notas.txt")
notas
notas2=scan("notas.txt")
notas2
x_scan2=scan()  
1,5,6,2,5,7,8,3,5,2,1,0
x_scan2=scan(sep=",")
x_scan2
x_scan3=scan()
4,5 6,2
x_scan3=scan(dec=",")
x_scan3
x_scan4=scan(sep=",")
Pep, Catalina, Joan, Pau
x_scan4=scan(what="character", sep=",")
x_scan4
x_scan5=scan("http://aprender.uib.es/Rdir/enlatin1.txt", what="character")
x_scan5
x_scan6=scan("http://aprender.uib.es/Rdir/enlatin1.txt", what="character", encoding="latin1")
x_scan6
rep(1, 6)
rep("Palma", 5) #Las palabras, siempre entre comillas
rep(c(1,2,3), times=5)
rep(c(1,2,3), each=5)
rep(c(1,2,3,4), c(2,3,4,5)) 
seq(3, 150, by=4.5)
seq(80, 4, by=-3.5)
seq(80, 4, by=3.5) #Si el signo de p no es el correcto, da error
1:15
2.3:12.5
34:-5
-3:5   #Cuidado con los paréntesis
-(3:5)
seq(2, 10, length.out=10)
seq(2, by=0.5, length.out=10)
x=c(rep(1, 10), 2:10)
x
x=c(0,x,20,30)
x
x=c(rep(1, 10), 2:10)
fix(x)
# Sección 2
x=seq(2, 30, by=3)
x
x+2.5
2.5*x
sqrt(x) 
2^x
x^2
(1:4)^2
1:4^2
CD=function(x){summary(lm((1:4)~c(1:3, x)))$r.squared}
CD(5)
CD(6)
CD(5:10)
sapply(5:10, FUN=CD)
1:5+1:5 #Suma entrada a entrada
(1:5)*(1:5) #Producto entrada a entrada
(1:5)^(1:5) #Potencia entrada a entrada
n=1:20 #Secuencia 1,...,20, y la llamamos n por comodidad
x=3*2^n-20 #Aplicamos la fórmula a n=1,...,20
x
n=0:20
y=n/(n^2+1)
y
(0:20)/((0:20)^2+1)
x=c(1,5,6,2,5,7,8,3,5,2,1,0)
length(x)
max(x)
min(x)
sum(x)
prod(x)
mean(x)
cumsum(x)
diff(x)
diff(cumsum(x))
sort(x)
sort(x, dec=TRUE)
rev(x)
n=0:200
sum(1/(n^2+1))
i=0:20
x=2^(-i)
y=cumsum(x)
y
#Sección 3
x=seq(2, 50, by=1.5)
x
x(3) #¿La tercera entrada del vector?
x[3] #La tercera entrada del vector, ahora sí
x[length(x)]  #La última entrada del vector
x[length(x)-5] #La sexta entrada del vector empezando por el final
n=1:10
x=2*3^n-5*n^3*2^n
x
x[-3] #x sin la tercera entrada
x[3:7] #Los elementos tercero a séptimo de x
x[7:3] #Los elementos séptimo a tercero de x
x[seq(1, length(x), by=2)] #Los elementos de índice impar de x
x[seq(2, length(x), by=2)] #Los elementos de índice par 
x[-seq(1, length(x), by=2)] #Si borramos los elementos de índice impar, quedan los de índice par
x[(length(x)-5):length(x)] #Los últimos 6 elementos de x
x[length(x)-5:length(x)] #No os dejéis los paréntesis ...
x=c(1,5,6,2,5,7,8,3,5,2,1,0)
x[x>3] #Elementos mayores que 3
x[x>2 & x<=5] #Elementos mayores que 2 y menores o iguales que 5
x[x!=2 & x!=5] #Elementos diferentes de 2 y de 5
x[x>5 | x<=2] #Elementos mayores que 5 o menores o iguales que 2
x[x>=4] #Elementos mayores o iguales que 4
x[!x<4] #Esta condición es equivalente a la anterior
x[x%%4==0] #Elementos múltiplos de 4
x>3
x[x>3] 
x=c(1,5,6,2,5,7,8,3,5,2,1,0)
y=c(2,-3,0,1,2,-1,4,-1,-2,3,5,1)
x[y>0] #Entradas de x correspondientes a entradas positivas de y
x=c(1,5,6,2,5,7,8,3,5,2,1)
x
x[x>3] #Elementos mayores que 3
which(x>3) #Índices de los elementos mayores que 3
which(x>2 & x<=5) #Índices de los elementos 2 y <= 5
which(x!=2 & x!=5) #Índices de los elementos diferentes de 2 y 5
which(x>5 | x<=2) #Índices de los elementos 5 o <= 2
which(x%%2==0) #Índices de los elementos pares del vector
which.min(x)
which(x==min(x))
x=2^(0:10)
x
x[20<x & x<30] #Elementos de x estrictamente entre 20 y 30
length(x[20<x & x<30]) #¿Cuántas entradas hay entre 20 y 30?
which(x>1500) #Índices de elementos mayores que 1500
x=c()
x
z=NULL
z
y=c(x, 2, z)
y
exp(pi)>pi^(exp(1)) #¿Es mayor e^pi que pi^e?
1234567%%9==0 #¿Es 1234567 múltiplo de 9?
x=1:10
x
x[3]=15 #En la posición 3 escribimos 15
x[11]=25 #Añadimos en la posición 11 un 25
x
x[c(2, 3, 4)]=x[c(2, 3, 4)]+10 #Sumamos 10 a las entradas en las posiciones 2, 3 y 4
x
x[(length(x)-2):length(x)]=0   #Igualamos las últimas tres entradas a 0
x
x[length(x)+3]=2   
sum(x)
sum(x, na.rm=TRUE)
mean(x, na.rm=TRUE)
which(x==NA) #¿Índices de entradas NA?
is.na(x)
which(is.na(x))   #Índices de entradas NA
y=x  #Creamos una copia de x y la llamamos y
y[is.na(y)]=mean(y, na.rm=TRUE) #Cambiamos los NA de y por la media del resto de entradas
y
x[!is.na(x)]
sum(x[!is.na(x)])
cumsum(x)
cumsum(x, na.rm=TRUE)  #cumsum no admite na.rm
cumsum(x[!is.na(x)])
na.omit(x)
sum(na.omit(x))
cumsum(na.omit(x))
x_sinNA=na.omit(x)
x_sinNA
attr(x_sinNA, "na.action")=NULL
attr(x_sinNA, "class")=NULL
x_sinNA
#Sección 4
Ciudades=c("Madrid","Palma","Madrid","Madrid","Barcelona","Palma","Madrid","Madrid")   
Ciudades
Ciudades.factor=factor(Ciudades)
Ciudades.factor
S=c("M","M","F","M","F","F","F","M","M","F")
Sex=as.factor(S)
Sex
Sex2=factor(S)   #Esto definirá el mismo factor
Sex2
Sex3=factor(S, levels=c("M","F","B"))   #Si queremos añadir un nuevo nivel
Sex3
Sex4=factor(S, levels=c("M","F","B"),labels=c("Masc","Fem","Bisex")) #Si queremos cambiar los nombres
Sex4
levels(Sex)
levels(Sex4)
Notas=factor(c(1,2,2,3,1,3,2,4,2,3,4,2))
Notas
levels(Notas)=c("Muy.mal","Mal","Bien","Muy.bien")
Notas
Notas_2niv=Notas
levels(Notas_2niv)=c("Mal","Mal","Bien","Bien")
Notas_2niv
Notas=ordered(Notas, levels=c("Muy.mal","Mal","Bien","Muy.bien"))
Notas
#Sección 5
x=c(1,2,-3,-4,5,6)
L=list(nombre="x",vector=x,media=mean(x),sumas=cumsum(x))
L
sumas
L$nombre
L$vector
L$media
L$sumas
L[[1]]
L[[4]]  #Esto es un vector
3*L[[4]] #Y podemos operar con él
L[4]   #Esto es una list, no un vector
3*L[4]   #Y NO podemos operar con él
str(L)
names(L)



