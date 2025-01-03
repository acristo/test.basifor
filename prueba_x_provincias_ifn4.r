library('basifoR')
nIFN<-4

##################################################################################################################################
## FUNCIONA PERO sólo con parte del nombre pero no con el nombre completo (incluye espacios o acentos) ni con el número
##################################################################################################################################

getNFI(provincia='ciudad',nfi= nIFN )[1:10,]# -----ESTE FUNCIONA
getNFI(provincia='CR',nfi= nIFN )[1:10,]# -----ESTE FUNCIONA
getNFI(provincia='ciudadreal',nfi= nIFN )[1:10,]# -----PERO ESTE NOOOOOOO FUNCIONA
getNFI(provincia=13,nfi= nIFN )[1:10,]#-----ESTE NOOOOO FUNCIONA

getNFI(provincia=26,nfi= nIFN )[1:10,]#-----ESTE NOOOOO FUNCIONA
getNFI(provincia='rioja',nfi= nIFN )[1:10,]#-----ESTE FUNCIONA

getNFI(provincia=12,nfi= nIFN )[1:10,]# así no funciona
getNFI(provincia='castellon',nfi= nIFN )[1:10,] # así no funciona
getNFI(provincia='castell',nfi= nIFN )[1:10,] # solamente este funciona
#este funciona en linux, pero no en windows


#################################################################################################################################
## ENLACE bien, es el que está dejajo de cada una...   pero basifoR no lo baja 
#################################################################################################################################

## estos son de provincias (el nombre tiene acento o ñ)

getNFI(provincia=05,nfi= nIFN )[1:10,]# no funciona
getNFI(provincia='avila',nfi= nIFN )[1:10,]# tampoco así
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/Ifn4p05-avila.accdb.zip

getNFI(provincia=24,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='leon',nfi= nIFN )[1:10,]# tampoco funciona así
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/Ifn4p24-leon.accdb.zip

getNFI(provincia=15,nfi= nIFN )[1:10,]#con el 15 no funciona, y
getNFI(provincia='coruna',nfi= nIFN )[1:10,]# no funciona tampoco
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/Ifn4p15-coruna.accdb.zip

## y estos de comunidades autónomas

getNFI(provincia='paisv',nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco 
getNFI(provincia=1,nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco
getNFI(provincia='araba',nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco 
getNFI(provincia=20,nfi= nIFN )[1:10,]# el ifn4 se descarga para el pais vasco
getNFI(provincia=48,nfi= nIFN )[1:10,]# el ifn4 se descarga para el pais vasco
getNFI(provincia='alava',nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco 
getNFI(provincia='guipuz',nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco 
getNFI(provincia='vizca',nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco 
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/Ifn4p-paisvasco.accdb.zip

getNFI(provincia=6,nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura
getNFI(provincia='extremadura',nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura
getNFI(provincia=10,nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura
getNFI(provincia='extre',nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_extremadura_tcm30-536579.zip

getNFI(provincia=8,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña
getNFI(provincia='Catal',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
getNFI(provincia=17,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña
getNFI(provincia=25,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña
getNFI(provincia=43,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña
getNFI(provincia='barce',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
getNFI(provincia='tarra',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
getNFI(provincia='lerid',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
getNFI(provincia='geron',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
getNFI(provincia='lleid',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
getNFI(provincia='giron',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_cataluna_tcm30-536603.zip

getNFI(provincia=35,nfi= nIFN )[1:10,]# el ifn4 se descarga para canarias /// el enlace está bien pero no entiende ninguna de las alternativas
getNFI(provincia='cana',nfi= nIFN )[1:10,]
getNFI(provincia='tener',nfi= nIFN )[1:10,]
getNFI(provincia='lasp',nfi= nIFN )[1:10,]
getNFI(provincia='palm',nfi= nIFN )[1:10,]
getNFI(provincia=38,nfi= nIFN )[1:10,]# el ifn4 se descarga para canarias
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_canarias_tcm30-536601.zip

#############################################################################################################################################
## FUNCIONAN CORRECTAMENTE

getNFI(provincia=2, nfi= nIFN )[1:10,] 
getNFI(provincia='alba', nfi= nIFN )[1:10,]

getNFI(provincia=7,nfi= nIFN )[1:10,]
getNFI(provincia='balea',nfi= nIFN )[1:10,]

getNFI(provincia=9,nfi= nIFN )[1:10,]
getNFI(provincia='bur',nfi= nIFN )[1:10,]

getNFI(provincia=16,nfi= nIFN )[1:10,]
getNFI(provincia='cuen',nfi= nIFN )[1:10,]

getNFI(provincia=19,nfi= nIFN )[1:10,]
getNFI(provincia='guad',nfi= nIFN )[1:10,]

getNFI(provincia=22,nfi= nIFN )[1:10,]
getNFI(provincia='hues',nfi= nIFN )[1:10,]

getNFI(provincia=27,nfi= nIFN )[1:10,]
getNFI(provincia='lug',nfi= nIFN )[1:10,]

getNFI(provincia=28,nfi= nIFN )[1:10,]
getNFI(provincia='madr',nfi= nIFN )[1:10,]

getNFI(provincia=32,nfi= nIFN )[1:10,]
getNFI(provincia='ore',nfi= nIFN )[1:10,]

getNFI(provincia=33,nfi= nIFN )[1:10,]
getNFI(provincia='astur',nfi= nIFN )[1:10,]

getNFI(provincia=36,nfi= nIFN )[1:10,]
getNFI(provincia='pont',nfi= nIFN )[1:10,]

getNFI(provincia=37,nfi= nIFN )[1:10,]
getNFI(provincia='sal',nfi= nIFN )[1:10,]

getNFI(provincia=42,nfi= nIFN )[1:10,]
getNFI(provincia='sor',nfi= nIFN )[1:10,]

getNFI(provincia=44,nfi= nIFN )[1:10,]
getNFI(provincia='ter',nfi= nIFN )[1:10,]

getNFI(provincia=45,nfi= nIFN )[1:10,]
getNFI(provincia='tol',nfi= nIFN )[1:10,]

getNFI(provincia=50,nfi= nIFN )[1:10,]
getNFI(provincia='zar',nfi= nIFN )[1:10,]

## ya funcionan
getNFI(provincia=30,nfi= nIFN )[1:10,]
getNFI(provincia='Murc',nfi= nIFN )[1:10,]

getNFI(provincia=31,nfi= nIFN )[1:10,]
getNFI(provincia='nav',nfi= nIFN )[1:10,]

getNFI(provincia=34,nfi= nIFN )[1:10,]
getNFI(provincia='pale',nfi= nIFN )[1:10,]

getNFI(provincia=39,nfi= nIFN )[1:10,]
df.cant<-getNFI('cantabria', nfi.nr= nIFN, dt.nm = "PCMayores" )

getNFI(provincia=40,nfi= nIFN )[1:10,]
getNFI(provincia='seg',nfi= nIFN )[1:10,]

getNFI(provincia=47,nfi= nIFN )[1:10,]
getNFI(provincia='valla',nfi= nIFN )[1:10,]

getNFI(provincia=49,nfi= nIFN )[1:10,]
getNFI(provincia='zam',nfi= nIFN )[1:10,]

## ya están recientemente publicadas las 3 de Valencia (pero Castellón está mas arriba porque no funciona con número ni con el nombre completo)
getNFI(provincia=3,nfi= nIFN )[1:10,]
getNFI(provincia='alic',nfi= nIFN )[1:10,]

getNFI(provincia=46,nfi= nIFN )[1:10,]
getNFI(provincia='vale',nfi= nIFN )[1:10,]

#############################################################################################################################################
## NO SE HA PUBLICADO EL INVENTARIO DE ESTAS PROVINCIAS PARA LA CUARTA EDICIÓN
## solamente faltan las 8 provincias de Andalúcía
getNFI(provincia=4,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=11,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=14,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=18,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=21,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=23,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=29,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
getNFI(provincia=41,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------
