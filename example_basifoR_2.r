## url for NFI inventory, old version
curl -k https://www.miteco.gob.es/es/biodiversidad/servicios/banco-datos-naturaleza/informacion-disponible/ifn3_base_datos_1_25.aspx | grep ".zip" | sed -n "/href/ s/.*href=['\"]\([^'\"]*\)['\"].*/\1/p" |  sed 's|^|https://www.miteco.gob.es|'  > links.txt
curl -k https://www.miteco.gob.es/es/biodiversidad/servicios/banco-datos-naturaleza/informacion-disponible/ifn3_base_datos_26_50.aspx | grep ".zip" | sed -n "/href/ s/.*href=['\"]\([^'\"]*\)['\"].*/\1/p" |  sed 's|^|https://www.miteco.gob.es|'  >> links.txt
wget --no-check-certificate -i links.txt -P ./data/

## Load ini file
library('basifoR')
## source('~/Documents/tuh32536/bfRdevel/devel/ini')
## source('ini')

## seconf NFI
require('measurements')

madridNFI <- system.file("ifn3p28_tcm30-293962.zip", package="basifoR")
rmad <- readNFI(madridNFI)[1:10,]
rmad <- readNFI(madridNFI)


pathIF <- './data/'
dir(path=pathIF)
## IFN2 - trees
IFN2_trees <- read.csv(paste0(pathIF,'pcmayores2.csv'), sep = ',')
## IFN3 - trees
IFN3_trees <- read.csv(paste0(pathIF,'pcmayores3.csv'), sep = ',')

trees <- IFN3_trees
[1:1000,]


rmad[,'Provincia'] <- rep('28', nrow(rmad))
head(rmad)


nfimet <- nfiMetrics(trees, append = c('origen','esta'),var = c('d','n','h','Hd'))

head(nfimet,100)


q()
n
