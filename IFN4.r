##Script para leer bases de datos .mdb del IFN4
# El presente script posee rutinas para dos sistemas operativos (linux, windows)
# las rutinas se han elaborado con el objeto de leer en R extensiones .mdb de los
# inventarions forestales nacionales de Espa?a


## En linux
# seleccionar directorio de trabajo (cambiar ... por ruta)
# (En mi caso tengo la informaci?n en una USB # (disco E))
setwd('/home/cristobal/Dropbox/ifn4') #/media/WILAR2/04.IFN4')
# ej:
# setwd('~/Documentos/UVa/Protocolos/Logros\\ R/04.IFN4')
# Evaluar la informacion que posee el directorio
dir()
#Usar librería 'Hmisc 'para importar la extensi?n .mdb
#    instalar la librer??a:
# install.packages('Hmisc')
# Leer la librer?a
require('Hmisc')
# Se almacenar? la informaci?n en una lista denominada Ifn4p15
setwd('/home/cristobal/Dropbox/ifn4/Galicia/Campo')
dir()
Ifn4p27<-mdb.get("Ifn4p27.mdb")#'Ifn4p27.mdb')

# Saber que bases de datos se han obtenido
names(Ifn4p15)

# Leer una de las bases de datos importada:
# Anotar el nombre de la base de datos entre las comillas:
# por ejemplo se para mirar las características de PCMayores
dim(Ifn4p15[["PCMayores"]])
summary(Ifn4p15[["PCMayores"]])

# Se almacenar? PCMayores en una base de datos de nombre 'Mayores':
Mayores<-Ifn4p15[["PCMayores"]]



## En windows
# seleccionar directorio de trabajo (En mi caso tengo la informaci?n en una USB
# (disco E))
# setwd('E:\\04.IFN4')
# Evaluar la informaci?n que posee el directorio
dir()
#Usar libreri?a 'RODBC 'para importar la extensi?n .mdb
#    instalar la librer??a:
# install.packages('RODBC')
# Leer la librer?a
library('RODBC')
# Se almacenar? la informaci?n en una lista denominada channel
channel <- odbcConnectAccess("Ifn4p15.mdb")
# Saber que bases de datos se han obtenido
sqlTables(channel)#todo
sqlTables(channel, tableType = "TABLE")#tablas
# Leer una de las bases de datos importada:
# Anotar el nombre de la base de datos entre las comillas:
# por ejemplo se para mirar las características de PCMayores
#convertir en data.frame
# Se almacenar? PCMayores en una base de datos de nombre 'Mayores':
Mayores <- sqlFetch(channel, sqtable="PCMayores", colnames = FALSE, rownames =
FALSE)
# diagnosticar  base de datos
head(Mayores)
summary(Mayores)
str(Mayores)
dim(Mayores)

