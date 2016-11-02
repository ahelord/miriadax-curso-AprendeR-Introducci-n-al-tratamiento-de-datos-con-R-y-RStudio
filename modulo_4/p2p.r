### Taller P2P Harwin Leonardo Rodriguez Pinzon ###
### Instrucciones: Copio cada punto con su respectiva letra, debajo se encuentra el script correspondiente al solucion ######
### ABrir R Studio, copiar, pegar y ejecutarlos### 

#El fichero Halterofilia.csv, que encontrarás en el repositorio del curso (en el url https://miriadax.net/
#documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8), contiene los resultados
#del campeonato del mundo de halterofilia de 2010. Cada fila corresponde a un halterófilo participante en
#el campeonato. Consta de 6 columnas:
# • Peso: El peso corporal del halterófilo.
#• Arrancada: El peso máximo que levantó en la modalidad de Arrancada.
#• Dos.Tiempos: El peso máximo que levantó en la modalidad de Dos Tiempos.
#• Total: La suma de los dos pesos anteriores.
#• Categoria: La categoría en la que compitió. Son categorías por peso. Por ejemplo "menos 62" quiere
#decir que el halterófilo pesaba menos de 62 Kg.
#• Sexo: "M" para masculino y "F" para femenino.
#Para esta tarea debes:
#a) Guardar el fichero Halterofilia.csv en un data frame llamado Resultados. La variable Categoria ha de ser
#un factor ordenado en el orden creciente de los pesos
resultados=read.table("https://miriadax.net/documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8", header=TRUE, sep=";", stringsAsFactors=FALSE)
str(resultados)
resultados$Categoria=ordered(resultados$Categoria, levels=c("menos 48","menos 53","menos 56","menos 58","menos 62","menos 63","menos 69", "menos 75","mas 75","menos 77","menos 85","menos 94","menos 105","mas 105"))
str(resultados)
resultados
#b) Crear una tabla en la que, para cada combinación de categoría y sexo, se dé el peso medio en la modalidad
#de Arrancada y el peso medio en la modalidad de Dos Tiempos de los participantes de esa categoría y ese
#sexo. Esta tabla tiene que tener cuatro columnas (“Categoría”, “Sexo”, “Peso medio Arrancada” y “Peso
#medio Dos Tiempos”) y una fila por combinación de categoría y sexo. Te recomendamos usar la función
#aggregate para calcular los pesos medios.
install.packages("alr4",dep=TRUE)
library(alr4)
dfbkp=aggregate ( cbind ( Arrancada, Dos.Tiempos ) ~ Sexo + Categoria , data = resultados , FUN = mean )
df=data.frame(dfbkp$Categoria,dfbkp$Sexo,dfbkp$Arrancada,dfbkp$Dos.Tiempos)
names(df)=c("Categoría","Sexo","Peso Medio Arrancada","Peso Medio Dos Tiempos")
str(df)
df
#c) Extraer de Resultados dos dataframes: uno llamado ResM, con los datos de los hombres, y otro llamado
#ResF, con los datos de las mujeres. Ambos dataframes deben contener sólo dos columnas: “Peso” y “Total”.
ResM=resultados[resultados$Sexo=="M",c(1,4)]
str(ResM)
ResM
ResF=resultados[resultados$Sexo=="F",c(1,4)]
str(ResF)
ResF
#d) Crear un gráfico a partir de ResM, con el peso corporal en el eje horizontal y el peso total levantado en
#el eje vertical. Tienes que usar triángulos vacíos de color rojo. Verás que la distribución de los puntos es
#bastante peculiar. Encuentra una razón para esta distribución.
par(mar=c(5.1, 4.1, 3.8, 4.1)+0.9, xpd=TRUE)

plot(ResM,pch=2,col="red",main="Grafico campeonato del mundo de halterofilia de 2010",ylab="Peso Total Levantado",xlab="Peso Corporal",log="xy")
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
## Respuesta : Exponencial ##
#e) Añadir al gráfico los puntos correspondientes a ResF. Tienes que usar cuadrados llenos de color verde.
#Añade una leyenda que indique cada tipo de punto qué sexo representa. Asegúrate de que todos los puntos
#están dentro de la gráfica y ninguno queda sin representar por haber quedado fuera de los límites. Es posible
#que tengas que redibujar todo usando valores adecuados de “xlim” e “ylim”
points(ResF,pch=22,bg="green")
legend("bottomright", inset=c(-0.3,0), legend=c("Hombres","Mujer","Regresion Hombres","Regresion Mujer"), col=c("red","green","blue","purple"),lty = 1)
#f) Calcular la regresión lineal del peso levantado en función del peso corporal tanto para los hombres como
#para las mujeres. Indica en ambos casos cuánto peso levantan de media por cada Kg. adicional de peso
#corporal. Indica también los coeficientes de determinación.
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
### coeficiente de corelacion  0.5839 hombres ###
regresionF_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResF)
summary(regresionF_logPesoLogTotal)
a3=10^(1.27632)
curve(a3*(x^0.56812),add = TRUE,col="purple")
### coeficiente de corelacion  0.4165 Mujer ###### Taller P2P Harwin Leonardo Rodriguez Pinzon ###
### Instrucciones: Copio cada punto con su respectiva letra, debajo se encuentra el script correspondiente al solucion ######
### Abrir R Studio y ejecutarlos ###

#El fichero Halterofilia.csv, que encontrarás en el repositorio del curso (en el url https://miriadax.net/
#documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8), contiene los resultados
#del campeonato del mundo de halterofilia de 2010. Cada fila corresponde a un halterófilo participante en
#el campeonato. Consta de 6 columnas:
# • Peso: El peso corporal del halterófilo.
#• Arrancada: El peso máximo que levantó en la modalidad de Arrancada.
#• Dos.Tiempos: El peso máximo que levantó en la modalidad de Dos Tiempos.
#• Total: La suma de los dos pesos anteriores.
#• Categoria: La categoría en la que compitió. Son categorías por peso. Por ejemplo "menos 62" quiere
#decir que el halterófilo pesaba menos de 62 Kg.
#• Sexo: "M" para masculino y "F" para femenino.
#Para esta tarea debes:
#a) Guardar el fichero Halterofilia.csv en un data frame llamado Resultados. La variable Categoria ha de ser
#un factor ordenado en el orden creciente de los pesos
resultados=read.table("https://miriadax.net/documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8", header=TRUE, sep=";", stringsAsFactors=FALSE)
str(resultados)
resultados$Categoria=ordered(resultados$Categoria, levels=c("menos 48","menos 53","menos 56","menos 58","menos 62","menos 63","menos 69", "menos 75","mas 75","menos 77","menos 85","menos 94","menos 105","mas 105"))
str(resultados)
resultados
#b) Crear una tabla en la que, para cada combinación de categoría y sexo, se dé el peso medio en la modalidad
#de Arrancada y el peso medio en la modalidad de Dos Tiempos de los participantes de esa categoría y ese
#sexo. Esta tabla tiene que tener cuatro columnas (“Categoría”, “Sexo”, “Peso medio Arrancada” y “Peso
#medio Dos Tiempos”) y una fila por combinación de categoría y sexo. Te recomendamos usar la función
#aggregate para calcular los pesos medios.
install.packages("alr4",dep=TRUE)
library(alr4)
dfbkp=aggregate ( cbind ( Arrancada, Dos.Tiempos ) ~ Sexo + Categoria , data = resultados , FUN = mean )
df=data.frame(dfbkp$Categoria,dfbkp$Sexo,dfbkp$Arrancada,dfbkp$Dos.Tiempos)
names(df)=c("Categoría","Sexo","Peso Medio Arrancada","Peso Medio Dos Tiempos")
str(df)
df
#c) Extraer de Resultados dos dataframes: uno llamado ResM, con los datos de los hombres, y otro llamado
#ResF, con los datos de las mujeres. Ambos dataframes deben contener sólo dos columnas: “Peso” y “Total”.
ResM=resultados[resultados$Sexo=="M",c(1,4)]
str(ResM)
ResM
ResF=resultados[resultados$Sexo=="F",c(1,4)]
str(ResF)
ResF
#d) Crear un gráfico a partir de ResM, con el peso corporal en el eje horizontal y el peso total levantado en
#el eje vertical. Tienes que usar triángulos vacíos de color rojo. Verás que la distribución de los puntos es
#bastante peculiar. Encuentra una razón para esta distribución.
par(mar=c(5.1, 4.1, 3.8, 4.1)+0.9, xpd=TRUE)

plot(ResM,pch=2,col="red",main="Grafico campeonato del mundo de halterofilia de 2010",ylab="Peso Total Levantado",xlab="Peso Corporal",log="xy")
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
## Respuesta : Exponencial ##
#e) Añadir al gráfico los puntos correspondientes a ResF. Tienes que usar cuadrados llenos de color verde.
#Añade una leyenda que indique cada tipo de punto qué sexo representa. Asegúrate de que todos los puntos
#están dentro de la gráfica y ninguno queda sin representar por haber quedado fuera de los límites. Es posible
#que tengas que redibujar todo usando valores adecuados de “xlim” e “ylim”
points(ResF,pch=22,bg="green")
legend("bottomright", inset=c(-0.3,0), legend=c("Hombres","Mujer","Regresion Hombres","Regresion Mujer"), col=c("red","green","blue","purple"),lty = 1)
#f) Calcular la regresión lineal del peso levantado en función del peso corporal tanto para los hombres como
#para las mujeres. Indica en ambos casos cuánto peso levantan de media por cada Kg. adicional de peso
#corporal. Indica también los coeficientes de determinación.
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
### coeficiente de corelacion  0.5839 hombres ###
regresionF_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResF)
summary(regresionF_logPesoLogTotal)
a3=10^(1.27632)
curve(a3*(x^0.56812),add = TRUE,col="purple")
### coeficiente de corelacion  0.4165 Mujer ###### Taller P2P Harwin Leonardo Rodriguez Pinzon ###
### Instrucciones: Copio cada punto con su respectiva letra, debajo se encuentra el script correspondiente al solucion ######
### Abrir R Studio y ejecutarlos ###

#El fichero Halterofilia.csv, que encontrarás en el repositorio del curso (en el url https://miriadax.net/
#documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8), contiene los resultados
#del campeonato del mundo de halterofilia de 2010. Cada fila corresponde a un halterófilo participante en
#el campeonato. Consta de 6 columnas:
# • Peso: El peso corporal del halterófilo.
#• Arrancada: El peso máximo que levantó en la modalidad de Arrancada.
#• Dos.Tiempos: El peso máximo que levantó en la modalidad de Dos Tiempos.
#• Total: La suma de los dos pesos anteriores.
#• Categoria: La categoría en la que compitió. Son categorías por peso. Por ejemplo "menos 62" quiere
#decir que el halterófilo pesaba menos de 62 Kg.
#• Sexo: "M" para masculino y "F" para femenino.
#Para esta tarea debes:
#a) Guardar el fichero Halterofilia.csv en un data frame llamado Resultados. La variable Categoria ha de ser
#un factor ordenado en el orden creciente de los pesos
resultados=read.table("https://miriadax.net/documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8", header=TRUE, sep=";", stringsAsFactors=FALSE)
str(resultados)
resultados$Categoria=ordered(resultados$Categoria, levels=c("menos 48","menos 53","menos 56","menos 58","menos 62","menos 63","menos 69", "menos 75","mas 75","menos 77","menos 85","menos 94","menos 105","mas 105"))
str(resultados)
resultados
#b) Crear una tabla en la que, para cada combinación de categoría y sexo, se dé el peso medio en la modalidad
#de Arrancada y el peso medio en la modalidad de Dos Tiempos de los participantes de esa categoría y ese
#sexo. Esta tabla tiene que tener cuatro columnas (“Categoría”, “Sexo”, “Peso medio Arrancada” y “Peso
#medio Dos Tiempos”) y una fila por combinación de categoría y sexo. Te recomendamos usar la función
#aggregate para calcular los pesos medios.
install.packages("alr4",dep=TRUE)
library(alr4)
dfbkp=aggregate ( cbind ( Arrancada, Dos.Tiempos ) ~ Sexo + Categoria , data = resultados , FUN = mean )
df=data.frame(dfbkp$Categoria,dfbkp$Sexo,dfbkp$Arrancada,dfbkp$Dos.Tiempos)
names(df)=c("Categoría","Sexo","Peso Medio Arrancada","Peso Medio Dos Tiempos")
str(df)
df
#c) Extraer de Resultados dos dataframes: uno llamado ResM, con los datos de los hombres, y otro llamado
#ResF, con los datos de las mujeres. Ambos dataframes deben contener sólo dos columnas: “Peso” y “Total”.
ResM=resultados[resultados$Sexo=="M",c(1,4)]
str(ResM)
ResM
ResF=resultados[resultados$Sexo=="F",c(1,4)]
str(ResF)
ResF
#d) Crear un gráfico a partir de ResM, con el peso corporal en el eje horizontal y el peso total levantado en
#el eje vertical. Tienes que usar triángulos vacíos de color rojo. Verás que la distribución de los puntos es
#bastante peculiar. Encuentra una razón para esta distribución.
par(mar=c(5.1, 4.1, 3.8, 4.1)+0.9, xpd=TRUE)

plot(ResM,pch=2,col="red",main="Grafico campeonato del mundo de halterofilia de 2010",ylab="Peso Total Levantado",xlab="Peso Corporal",log="xy")
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
## Respuesta : Exponencial ##
#e) Añadir al gráfico los puntos correspondientes a ResF. Tienes que usar cuadrados llenos de color verde.
#Añade una leyenda que indique cada tipo de punto qué sexo representa. Asegúrate de que todos los puntos
#están dentro de la gráfica y ninguno queda sin representar por haber quedado fuera de los límites. Es posible
#que tengas que redibujar todo usando valores adecuados de “xlim” e “ylim”
points(ResF,pch=22,bg="green")
legend("bottomright", inset=c(-0.3,0), legend=c("Hombres","Mujer","Regresion Hombres","Regresion Mujer"), col=c("red","green","blue","purple"),lty = 1)
#f) Calcular la regresión lineal del peso levantado en función del peso corporal tanto para los hombres como
#para las mujeres. Indica en ambos casos cuánto peso levantan de media por cada Kg. adicional de peso
#corporal. Indica también los coeficientes de determinación.
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
### coeficiente de corelacion  0.5839 hombres ###
regresionF_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResF)
summary(regresionF_logPesoLogTotal)
a3=10^(1.27632)
curve(a3*(x^0.56812),add = TRUE,col="purple")
### coeficiente de corelacion  0.4165 Mujer ###

#El fichero Halterofilia.csv, que encontrarás en el repositorio del curso (en el url https://miriadax.net/
#documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8), contiene los resultados
#del campeonato del mundo de halterofilia de 2010. Cada fila corresponde a un halterófilo participante en
#el campeonato. Consta de 6 columnas:
 # • Peso: El peso corporal del halterófilo.
#• Arrancada: El peso máximo que levantó en la modalidad de Arrancada.
#• Dos.Tiempos: El peso máximo que levantó en la modalidad de Dos Tiempos.
#• Total: La suma de los dos pesos anteriores.
#• Categoria: La categoría en la que compitió. Son categorías por peso. Por ejemplo "menos 62" quiere
#decir que el halterófilo pesaba menos de 62 Kg.
#• Sexo: "M" para masculino y "F" para femenino.
#Para esta tarea debes:
  #a) Guardar el fichero Halterofilia.csv en un data frame llamado Resultados. La variable Categoria ha de ser
#un factor ordenado en el orden creciente de los pesos
resultados=read.table("https://miriadax.net/documents/28098821/74010125/Halterofilia.csv/f2fb1ddc-6de0-4942-870e-fbe5e9d2eca8", header=TRUE, sep=";", stringsAsFactors=FALSE)
str(resultados)
resultados$Categoria=ordered(resultados$Categoria, levels=c("menos 48","menos 53","menos 56","menos 58","menos 62","menos 63","menos 69", "menos 75","mas 75","menos 77","menos 85","menos 94","menos 105","mas 105"))
str(resultados)
resultados
#b) Crear una tabla en la que, para cada combinación de categoría y sexo, se dé el peso medio en la modalidad
#de Arrancada y el peso medio en la modalidad de Dos Tiempos de los participantes de esa categoría y ese
#sexo. Esta tabla tiene que tener cuatro columnas (“Categoría”, “Sexo”, “Peso medio Arrancada” y “Peso
#medio Dos Tiempos”) y una fila por combinación de categoría y sexo. Te recomendamos usar la función
#aggregate para calcular los pesos medios.
install.packages("alr4",dep=TRUE)
library(alr4)
dfbkp=aggregate ( cbind ( Arrancada, Dos.Tiempos ) ~ Sexo + Categoria , data = resultados , FUN = mean )
df=data.frame(dfbkp$Categoria,dfbkp$Sexo,dfbkp$Arrancada,dfbkp$Dos.Tiempos)
names(df)=c("Categoría","Sexo","Peso Medio Arrancada","Peso Medio Dos Tiempos")
str(df)
df
#c) Extraer de Resultados dos dataframes: uno llamado ResM, con los datos de los hombres, y otro llamado
#ResF, con los datos de las mujeres. Ambos dataframes deben contener sólo dos columnas: “Peso” y “Total”.
ResM=resultados[resultados$Sexo=="M",c(1,4)]
str(ResM)
ResM
ResF=resultados[resultados$Sexo=="F",c(1,4)]
str(ResF)
ResF
#d) Crear un gráfico a partir de ResM, con el peso corporal en el eje horizontal y el peso total levantado en
#el eje vertical. Tienes que usar triángulos vacíos de color rojo. Verás que la distribución de los puntos es
#bastante peculiar. Encuentra una razón para esta distribución.
par(mar=c(5.1, 4.1, 3.8, 4.1)+0.9, xpd=TRUE)

plot(ResM,pch=2,col="red",main="Grafico campeonato del mundo de halterofilia de 2010",ylab="Peso Total Levantado",xlab="Peso Corporal",log="xy")
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
## Respuesta : Exponencial ##
#e) Añadir al gráfico los puntos correspondientes a ResF. Tienes que usar cuadrados llenos de color verde.
#Añade una leyenda que indique cada tipo de punto qué sexo representa. Asegúrate de que todos los puntos
#están dentro de la gráfica y ninguno queda sin representar por haber quedado fuera de los límites. Es posible
#que tengas que redibujar todo usando valores adecuados de “xlim” e “ylim”
points(ResF,pch=22,bg="green")
legend("bottomright", inset=c(-0.3,0), legend=c("Hombres","Mujer","Regresion Hombres","Regresion Mujer"), col=c("red","green","blue","purple"),lty = 1)
#f) Calcular la regresión lineal del peso levantado en función del peso corporal tanto para los hombres como
#para las mujeres. Indica en ambos casos cuánto peso levantan de media por cada Kg. adicional de peso
#corporal. Indica también los coeficientes de determinación.
regresionH_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResM)
summary(regresionH_logPesoLogTotal)
a2=10^(1.52083)
curve(a2*(x^0.51393),add = TRUE,col="blue")
### coeficiente de corelacion  0.5839 hombres ###
regresionF_logPesoLogTotal=lm(log10(Total)~log10(Peso),ResF)
summary(regresionF_logPesoLogTotal)
a3=10^(1.27632)
curve(a3*(x^0.56812),add = TRUE,col="purple")
### coeficiente de corelacion  0.4165 Mujer ###