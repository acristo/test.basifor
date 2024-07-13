## Asunto: BasifoR
 
## Estimados,

## me presento, me llamo Jokin Gorrotxategi y trabajo en Bioma Forestal con Oscar Schwendtner. Actualmente estamos trabajando con algunos de los datos del IFN-4 y hemos encontrado la librería para R que habéis elaborado.

## Lo primero, felicitaros por el trabajo ya que nos parece una herramienta muy útil para tratar los datos del inventario. Sin embargo, usando la librería me han surgido dudas sobre una de sus funcionalidades y sobre los resultados que ofrece. En este aspecto, os mando una ejemplo reproducible por si me pudierais aclarar si se trata de algo de la propia librería o de algún error que esté cometiendo yo.

## Mi objetivo es trabajar con los datos del IFN4, pero me ocurre lo mismo con datos del IFN2 (los que ponéis en la descripción de la librería) y con los propios datos del IFN4.

## Ejemplo reproducible:

library('basifoR')
library('tidyverse')
options(width=170)

url.ifn <- "https://www.miteco.gob.es/es/biodiversidad/servicios/banco-datos-naturaleza/"
# lectura de datos del ifn2 de Cantabria
## dir(path='./data/ifn2/', pattern='*.zip')
file.39.if2 <- '090471228013cc74_tcm30-278544.zip'
url.39.if2 <- paste0(url.ifn, file.39.if2)
trees.39.if2 <- readNFI(url.39.if2)

dendro.esta <- dendroMetrics(trees.39.if2, summ.vr = c('Esta') )
dendro.esta.esp <- dendroMetrics(trees.39.if2, summ.vr = c('Esta', 'espe') )

head(dendro.esta)
  ## pr ESPECIE ESTADILLO     ba      d     dg      h     Hd        n       v
## 1 39      61         4  9.195 17.415 18.103 13.515 15.879  357.214 336.790
## 2 39      61         5 11.712 10.812 10.960 12.885 14.643 1241.409 389.695
## 3 39      43         6  5.793 10.676 11.043  9.000 10.387  604.789 126.903
## 4 39      61         7  1.677 14.867 14.954 12.000 12.000   95.493  50.991
## 5 39      61         8 15.032 12.396 12.924 14.172 18.250 1145.916 585.033
## 6 39      61        10  7.505 11.674 12.644 11.941 13.311  597.715 235.856



url.22.if4 <- "https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/Ifn4p22_Huesca.zip"
trees.22.if4 <- readNFI(url.22.if4, dt.nm = "PCMayores")
trees.22.if4_filtro <- trees.22.if4 %>% 
  filter(Estadillo < 20)
str(trees.22.if4_filtro)
cut.esta.filtro <- dendroMetrics(trees.22.if4_filtro,
                          summ.vr = c('Estadillo', 'Especie'))
cut.esta.filtro


cut.esta <- dendroMetrics(trees.22.if4,
                          summ.vr = c('Estadillo'))
head(cut.esta,50)
cut.esta[cut.esta$Estadillo==13,]


cut.esta.sp <- dendroMetrics(trees.22.if4,
                          summ.vr = c('Estadillo', 'espe'))
head(cut.esta.sp,50)
cut.esta.sp[cut.esta.sp$Estadillo==12,]

##   pr Especie Estadillo     ba      d     dg      h    Hd      n        v
## 1 22      31        12 22.804 16.825 18.305 11.289 17.45 866.51 2108.559

## Podréis ver que, por ejemplo, que en el estadillo 12 de la provincia de Huesca (Código = 22) hay más de una especie de árbol. Mientras que el resultado solamente nos ofrece las métricas para la especie 31 (Abies alba). 

## Ocurre lo mismo para el estadillo 6 de la tabla de muestra que presentasteis en el último congreso. En ese estadillo hay dos especies mientras que los resultados solamente muestran las métricas para solamente una de ellas.

## Me gustaría terminar agradeciendo vuestro tiempo y esperando que os resulte de interés este correo.

## Eskerrik asko,

## Jokin
