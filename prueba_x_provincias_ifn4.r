library('basifoR')
nIFN<-4


#################################################################################################################################
## ENLACE MAL y además no encuentra la referencia
#################################################################################################################################

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn4_avila_tcm30-536598.zip
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_avila_tcm30-536598.zip
getNFI(provincia=5,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='ávila',nfi= nIFN )[1:10,]#enlace mal

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn4_leon_tcm30-536581.zip
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_leon_tcm30-536581.zip
getNFI(provincia=24,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='león',nfi= nIFN )[1:10,]# tampoco funciona así


#################################################################################################################################
## ENLACE MAL
#################################################################################################################################

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4_murcia_tcm30-536584.zip
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_murcia_tcm30-536584.zip
getNFI(provincia=30,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='murc',nfi= nIFN )[1:10,]#enlace mal

## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn4_navarra_tcm30-536585.zip
## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn/ifn4/ifn4_navarra_tcm30-536585.zip
getNFI(provincia=31,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='nav',nfi= nIFN )[1:10,]#enlace mal

## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn4_palencia_tcm30-536588.zip
## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn/ifn4/ifn4_palencia_tcm30-536588.zip
getNFI(provincia=34,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='pale',nfi= nIFN )[1:10,]#enlace mal

## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn4_cantabria_tcm30-536602.zip
## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn/ifn4/ifn4_cantabria_tcm30-536602.zip
getNFI(provincia=39,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='canta',nfi= nIFN )[1:10,]#enlace mal


## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn4_segovia_tcm30-536591.zip
## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn/ifn4/ifn4_segovia_tcm30-536591.zip
getNFI(provincia=40,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='seg',nfi= nIFN )[1:10,]#enlace mal

## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn4_valladolid_tcm30-536593.zip
## http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn/ifn4/ifn4_valladolid_tcm30-536593.zip
getNFI(provincia=47,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='valla',nfi= nIFN )[1:10,]

##  'http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn4/nacionales/ifn4_zamora_tcm30-536594.zip'
##  'http://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-ifn/ifn/ifn4/ifn4_zamora_tcm30-536594.zip'
getNFI(provincia=49,nfi= nIFN )[1:10,]#enlace mal
getNFI(provincia='zam',nfi= nIFN )[1:10,]#enlace mal



##################################################################################################################################
## FUNCIONA PERO NO DEL TODO
##################################################################################################################################

getNFI(provincia='ciud',nfi= nIFN )[1:10,]# este funciona, pero 
getNFI(provincia=13,nfi= nIFN )[1:10,]#                         con el 13 no funciona



#################################################################################################################################
## ENLACE MAL y no encuentra el registro
##
## Se puede hacer algo para relacionar las comunidades con las provincias para el IFN4?????
##
#################################################################################################################################
                                        # País Vasco
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn4_paisvasco_tcm30-536587.zip
## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_paisvasco_tcm30-536587.zip
getNFI(provincia=1,nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco
getNFI(provincia='paisvas',nfi = nIFN)[1:10,]# el ifn4 se descarga para el pais vasco 

getNFI(provincia=20,nfi= nIFN )[1:10,]# el ifn4 se descarga para el pais vasco

getNFI(provincia=48,nfi= nIFN )[1:10,]# el ifn4 se descarga para el pais vasco



#################################################################################################################################
## NO FUNCIONA PERO DEBRIA, EL ENLACE ESTA BIEN Y NO ES POR CCAA
#################################################################################################################################

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_acoruna_tcm30-536596.zip
getNFI(provincia=15,nfi= nIFN )[1:10,]#con el 15 no funciona, y
getNFI(provincia='acor',nfi= nIFN )[1:10,]#                      con el el nombre tampoco funciona, pero el enlace esta bien




##################################################################################################################################
## DESCARGA POR COMUNIDAD AUTÓNOMA /// NO FUNCIONA NINGUNA, PERO ENTIENDO QUE POR NOMBRE DEBERÍAN FUNCIONAR...
##################################################################################################################################


## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_extremadura_tcm30-536579.zip
getNFI(provincia=6,nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura
getNFI(provincia='extr',nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura

getNFI(provincia=10,nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura
getNFI(provincia='extre',nfi= nIFN )[1:10,]# el ifn4 se descarga para extremadura

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_cataluna_tcm30-536603.zip
getNFI(provincia=8,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña
getNFI(provincia='catal',nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña /// tampoco funciona

getNFI(provincia=17,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña

getNFI(provincia=25,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña

getNFI(provincia=43,nfi= nIFN )[1:10,]# el ifn4 se descarga para cataluña

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_larioja_tcm30-536580.zip
getNFI(provincia=26,nfi= nIFN )[1:10,]#-----ESTE DEBERÍA FUNCIONAR, el enlace está bien ------- AUNQUE EL NOMBRE ES DE CCAA
getNFI(provincia='lario',nfi= nIFN )[1:10,]#-----ESTE DEBERÍA FUNCIONAR, el enlace está bien ------- AUNQUE EL NOMBRE ES DE CCAA

## https://www.miteco.gob.es/content/dam/miteco/es/biodiversidad/temas/inventarios-nacionales/ifn/ifn4/ifn4_canarias_tcm30-536601.zip
getNFI(provincia=35,nfi= nIFN )[1:10,]# el ifn4 se descarga para canarias /// el enlace está bien pero no entiende ninguna de las alternativas
getNFI(provincia='cana',nfi= nIFN )[1:10,]
getNFI(provincia='tener',nfi= nIFN )[1:10,]
getNFI(provincia='lasp',nfi= nIFN )[1:10,]

getNFI(provincia=38,nfi= nIFN )[1:10,]# el ifn4 se descarga para canarias



q()
n



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


#############################################################################################################################################
## NO SE HA PUBLICADO EL INVENTARIO DE ESTAS PROVINCIAS PARA LA CUARTA EDICIÓN

getNFI(provincia=3,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=4,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=11,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=12,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=14,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=18,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=21,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=23,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=29,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=41,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------

getNFI(provincia=46,nfi= nIFN )[1:10,]#----------NO ESTÁ AÚN----------


q()
n
