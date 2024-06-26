##    https://cran.r-project.org/web/packages/basifoR/index.html
install.packages('basifoR')
library('basifoR')
## require('measurements')
ls()
getwd()
setwd("/home/cristobal/basifor/test.basifor.performance")

help(urlToTemp)
     madridNFI <- system.file("ifn3p28_tcm30-293962.zip", package="basifoR")
     tfmad <- urlToTemp(madridNFI)
     tfmad

help(readNFI)
     path <- '/es/biodiversidad/servicios/banco-datos-naturaleza/090471228013cbbd_tcm30-278511.zip'
     url2 <- httr::modify_url("https://www.miteco.gob.es", path = path)
     rnfi <- readNFI(url2)
     head(rnfi,3)

help(dbhMetric)

help(nfiMetrics)
     ## seconf NFI
     madridNFI <- system.file("ifn3p28_tcm30-293962.zip", package="basifoR")
     rmad <- readNFI(madridNFI)[1:10,]
     mmad <- nfiMetrics(rmad)
     head(rmad,3)
     ## see metric units
     attr(rmad,'units')

help(dendroMetrics)
     path <- '/es/biodiversidad/servicios/banco-datos-naturaleza/090471228013cbbd_tcm30-278511.zip'
     url2 <- httr::modify_url("https://www.miteco.gob.es", path = path)
     dmad <- dendroMetrics(url2, cut.dt = 'h >= 11')
     head(dmad)
     attr(dmad, 'units')
     
help(metrics2Vol)
     madridNFI <- system.file("ifn3p28_tcm30-293962.zip", package="basifoR")
     rmad <- readNFI(madridNFI)[1:10,]
     vmad <- metrics2Vol(rmad)
     head(vmad)
     ## see metric units
     attr(vmad,'units')
 

                                        # reading plots from web // ifn3
url.palencia.if3 <- 'https://www.miteco.gob.es/es/biodiversidad/servicios/banco-datos-naturaleza/ifn3p34_tcm30-293974.zip'

file.34.if3 <- urlToTemp(url.palencia.if3)
trees.34.if3 <- readNFI(url.palencia.if3, dt.nm = "PCMayores")
plots.34.if3 <- readNFI(url.palencia.if3, dt.nm = "PCParcelas")
str(trees.34.if3)
str(plots.34.if3)

trees <- trees.34.if3[1:100,]
nfimet <- nfiMetrics(trees, levels = c('Esta','espe'), var = c('d','n','h','Hd'))
head(nfimet,10)
tail(nfimet,30)


                                        # reading plots from web // ifn2
url.palencia.if2 <- 'https://www.miteco.gob.es/es/biodiversidad/servicios/banco-datos-naturaleza/090471228013cc6a_tcm30-278539.zip'

file.34.if2 <- urlToTemp(url.palencia.if2)
trees.34.if2 <- readNFI(url.palencia.if2)
plots.34.if2 <- readNFI(url.palencia.if2, dt.nm = "DATEST")
str(trees.34.if2)
str(plots.34.if2)

trees <- trees.34.if3[1:100,]
nfimet <- nfiMetrics(trees, levels = c('Esta','espe'), var = c('d','n','h','Hd'))
head(nfimet,20)


                                        # reading from local downloaded files // ifn4 // Cantabria
dir(path='./data/ifn4/', pattern='*.zip')
file.39.if4 <- './data/ifn4/Ifn4p39.zip'
trees.39.if4 <- readNFI(file.39.if4, dt.nm = "PCMayores")
plots.39.if4 <- readNFI(file.39.if4, dt.nm = "PCParcelas")
str(trees.39.if4)
str(plots.39.if4)

trees <- trees.39.if4[1:1000,]
nfimet <- nfiMetrics(trees, levels = c('Esta', 'cla', 'subcla', 'espe'), var = c('d','n','h','Hd'))
tail(nfimet,30)



                                        # reading from local downloaded files // ifn3 // Cantabria
dir(path='./data/ifn3/', pattern='*.zip')
file.39.if3 <- './data/ifn3/ifn3p39_tcm30-293983.zip'
trees.39.if3 <- readNFI(file.39.if3, dt.nm = "PCMayores")
plots.39.if3 <- readNFI(file.39.if3, dt.nm = "PCParcelas")
str(trees.39.if3)
str(plots.39.if3)

trees <- trees.39.if3[1:1000,]
nfimet <- nfiMetrics(trees, levels = c('esta', 'cla', 'subcla'), var = c('d','n','h','Hd'))
head(nfimet,40)



                                        # reading from local downloaded files // ifn2 // Palencia
dir(path='./data/ifn2/', pattern='*.zip')
file.39.if2 <- './data/ifn2/090471228013cc74_tcm30-278544.zip'
trees.39.if2 <- readNFI(file.39.if2)
plots.39.if2 <- readNFI(file.39.if2, dt.nm = "DATEST")
str(trees.39.if2)
str(plots.39.if2)

trees <- trees.39.if2[1:1000,]
nfimet <- nfiMetrics(trees, levels = c('esta'), var = c('d','n','h','Hd'))
head(nfimet,10)



                                        # reading data included with package
madridNFI <- system.file("ifn3p28_tcm30-293962.zip", package="basifoR")
tfmad <- urlToTemp(madridNFI)
tfmad

rmad <- readNFI(madridNFI)[1:100,]
rmad <- readNFI(madridNFI)

trees <- rmad[1:100,]
nfimet <- nfiMetrics(trees, levels = c('esta','espe'), var = c('d','n','h','Hd'))
head(nfimet,10)



                                        # IFN2 - trees / whole database
IFN2_trees <- read.csv('./data/pcmayores2.csv', sep = ',')
str(IFN2_trees)
trees <- IFN2_trees[1:100000,]
nfimet <- nfiMetrics(trees, levels = c('origen','esta'), var = c('d','n','h','Hd','ba'))
head(nfimet,10)
tail(nfimet,10)

                                        # IFN3 - trees / whole database
IFN3_trees <- read.csv('./data/pcmayores3.csv', sep = ',')
trees <- IFN3_trees[1:100000,]
str(trees)
nfimet <- nfiMetrics(trees, levels = c('origen','esta','cla','subc'), var = c('d','n','h','Hd','sp'))
head(nfimet,10)
tail(nfimet,10)


q()
n
