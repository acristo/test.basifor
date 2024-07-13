library('basifoR')
nIFN<-4

##################################################################################################################################
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

## FUNCIONAN CORRECTAMENTE
#################################################################
#################################################################


## {basifor}: A R package to use Spanish National Forest Inventory datasets for forest research and management

#################################################################
##                   minted code 1
#################################################################

# Install and load basifoR
install.packages('basifoR')
library('basifoR')

# Check documentation for getNFI and 
# dendroMetrics functions
help(getNFI)
help(dendroMetrics)


#################################################################
##                   minted code 2
#################################################################

# Read data from NFI2 in Burgos
trees_pr09_if2 <- getNFI('Burgos', nfi.nr = 2, dt.nm = "PCMayores")
plots_pr09_if2 <- getNFI('Burgos', nfi.nr = 2, dt.nm = "DATEST")

# Read data from NFI3 in Burgos 
trees_pr09_if3 <- getNFI('Burgos', nfi.nr = 3, dt.nm = "PCMayores")
plots_pr09_if3 <- getNFI('Burgos', nfi.nr = 3, dt.nm = "PCParcelas") 
maps_pr09_if3 <- getNFI('Burgos', nfi.nr = 3, dt.nm = "PCDatosMap")

# Read data from SFN4 in Burgos
trees_pr09_if4 <-getNFI('Burgos', nfi.nr = 4, dt.nm = "PCMayores")
plots_pr09_if4 <-getNFI('Burgos', nfi.nr = 4, dt.nm = "PCParcelas") 
maps_pr09_if4 <-getNFI('Burgos', nfi.nr = 4, dt.nm = "PCDatosMap")


#################################################################
##                   minted code 3
#################################################################

# NFI2 Data Processing
# Calculate variables per plot 
dendro.esta <- dendroMetrics(trees_pr09_if2, 
    summ.vr = c('Esta') )
# str(dendro.esta)
    
# Calculate variables per plot and species
dendro.esta.esp <- dendroMetrics(trees_pr09_if2, 
    summ.vr = c('Esta', 'espe') )
# str(dendro.esta.esp)
    
# Merge plot data with species-specific plot data 
plot.esp.09.if2 <- merge(dendro.esta[,c(3:10)],     
    dendro.esta.esp[,c(2:4,8:10)], 
    by=c('ESTADILLO'))
    
# Calculate percentages per species in each plot
plot.esp.09.if2$p.n <-  with(plot.esp.09.if2, 
    n.y*100/n.x)
plot.esp.09.if2$p.ba <- with(plot.esp.09.if2,
    ba.y*100/ba.x)
plot.esp.09.if2$p.v <-  with(plot.esp.09.if2, 
    v.y*100/v.x)

# Calculate variables per tree
trees.vol.09.if2 <- metrics2Vol(trees_pr09_if2)



#################################################################
##                   minted code 4
#################################################################

# Use the \gls{basifor} function with the 'cut.dt' parameter
# to select plots with basimetric area greater than
# 15 m2/ha
cut.esta <- dendroMetrics(trees_pr09_if2, 
    summ.vr = c('Esta'), cut.dt = 'ba > 15')
selected_plots <- cut.esta[,c('ESTADILLO')]

# Alternatively, select plots with beech trees 
# and basimetric area greater than 15 m2/ha
cut.esta.esp <- dendroMetrics(trees_pr09_if2, 
    summ.vr = c('Esta', 'espe'), 
    cut.dt = '(ba > 15) & (ESPECIE==21)')
selected_plots <- cut.esta.esp[,
    c('ESTADILLO','ESPECIE')]

# For more complex queries, you can use the results of 
# initial calculations to select plots with basimetric 
# area greater than 15 m2/ha and with a scots pine 
# proportion greater than 75%
selected_plots <- plot.esp.09.if2[
    (plot.esp.09.if2$ba.x > 15) &
    (plot.esp.09.if2$ESPECIE==21) &
    (plot.esp.09.if2$p.ba >75),
    c('ESTADILLO','ESPECIE','ba.x','p.ba') ] 

# In all cases, we have a list of selected plots 
# (ESTADILLO)

#################################################################
##                   minted code 5
#################################################################

# Store trees included in the selected plots in a new
# \gls{basifor} variable
trees.if2 <- trees_pr09_if2[trees_pr09_if2$ESTADILLO %in% 
    estadillos$ESTADILLO,] 

# Calculate tree variables using \gls{basifor} functions
met.trees.if2 <- \gls{SNF}Metrics(trees.if2, 
    levels = c('esta'), var = c('d','n','h','Hd')) 
vol.trees.if2 <- metrics2Vol(trees.if2) 

# Calculate plot variables using \gls{basifor} function
cut.esta.esp <- dendroMetrics(trees.if2, 
    summ.vr = c('Esta'))
    
# Store in a new dataframe the original \gls{SNF} data of 
# the selected plots
plots.if2 <- plots.09.if2[plots.09.if2$ESTADILLO %in% 
    estadillos$ESTADILLO,]


#################################################################
##                   minted code 6
#################################################################

# Select trees from the third edition of \gls{SNF}, excluding new
# plots ('A3E') for stock calculation
trees.if3 <- trees_pr09_if3[
    (trees_pr09_if3$Estadillo %in% estadillos$ESTADILLO) & 
    (trees_pr09_if3$Cla!= 'A3E'),]

# Calculate tree variables using \gls{basifor} functions
met.trees.if3 <- \gls{SNF}Metrics(trees.if3, 
    levels = c('esta'), var = c('d','n','h','Hd')) 
vol.trees.if3 <- metrics2Vol(trees.if3) 
# Calculate plot variables using \gls{basifor} function
cut.esta.esp <- dendroMetrics(trees.if3, 
    summ.vr = c('Esta'))
    
# Store in a new dataframe the original \gls{SNF} data 
# of the selected plots, excluding 'A3E'
plots.if3 <- plots_pr09_if3[
    (plots_pr09_if3$ESTADILLO %in% estadillos$ESTADILLO ) &
    (plots_pr09_if3$Cla!= 'A3E'), ]


#################################################################
##                   minted code 7
#################################################################

# Finally, graphically represent the selected plots
plots.if2 <- plots.09.if2[plots.09.if2$ESTADILLO %in% 
    estadillos$ESTADILLO, ]
plots.if2$UTMx <- as.integer(plots.if2$COORDEX) * 1000
plots.if2$UTMy <- as.integer(plots.if2$COORDEY) * 1000
head(plots.if2)

plots.if3 <- plots_pr09_if3[plots_pr09_if3$Estadillo %in% 
    estadillos$ESTADILLO, ]
maps_pr09_if3_subset <- maps_pr09_if3[
    maps_pr09_if3$Estadillo %in% estadillos$ESTADILLO, ]

# Calculate coordinates for representation
# Necessary library for coordinate transformation
require('rgdal') 

# c('CoorX','CoorY') Fields with x and y coordinates
maps_pr09_if3_utm <- SpatialPointsDataFrame(
    maps_pr09_if3_subset[,c('CoorX','CoorY')],  
    maps_pr09_if3_subset[,
    c("Provincia", "Estadillo", 
    "Clase", "Subclase", "Hoja50", 
    "CoorX", "CoorY", "FccArb")],   
    proj4string=CRS("+init=epsg:23030")) 

# Original reference system of IFN, ED1950
# Transform the spatial dataframe from UTM to 
# geographical coordinates
maps_pr09_if3_lt <- spTransform(maps_pr09_if3_utm, 
    CRS("+proj=longlat +ellps=WGS84"))
    
# Convert the spatial dataframe to a conventional 
# dataframe for mapping
mapsdf_pr09_if3_lt <- as.data.frame(maps_pr09_if3_lt)

# Load packages for maps and graphics
packs <- c('maps', 'mapdata', 'ggplot2', 'ggmap')
sapply(packs, require, character.only = TRUE)

# Download the relief map of Cantabria, 
# within its geographical boundaries
base_map = get_map(location = c(-5.0, 42.75, -3, 43.5), 
    maptype ="toner-background")
map_with_plots = ggmap(base_map) +
    geom_point(data = mapsdf_pr09_if3_lt, 
    mapping = aes(x = CoorX.1, y = CoorY.1), 
    color = "red") + 
    labs(title = "Analyzed Plots", 
    subtitle = "", 
    caption = "Source: Relief map from 'maps' package")
    
# Create and export a map with the analyzed plots
jpeg(file = "plots_map.jpeg", 
   quality = 100, width = 1000, height = 577,
 units = "px", pointsize = 12, bg = "transparent")
print(map_with_plots)
dev.off()


#################################################################
##                   minted code 8
#################################################################

#################################################################
##                   minted code 9
#################################################################

#################################################################
##                   minted code 10
#################################################################

#################################################################
##                   minted code 11
#################################################################

#################################################################
##                   minted code 12
#################################################################




q()
n
