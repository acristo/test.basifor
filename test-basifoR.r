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
##################################################################################################################################


# Read data from SNF2 in Burgos
trees_pr09_if2 <- getNFI('Burgos', nfi.nr = 2, dt.nm = "PCMayores")
plots_pr09_if2 <- getNFI('Burgos', nfi.nr = 2, dt.nm = "DATEST")

# Read data from SNF3 in Burgos 
trees_pr09_if3 <- getNFI('Burgos', nfi.nr = 3, dt.nm = "PCMayores")
plots_pr09_if3 <- getNFI('Burgos', nfi.nr = 3, dt.nm = "PCParcelas") 
maps_pr09_if3 <- getNFI('Burgos', nfi.nr = 3, dt.nm = "PCDatosMap")

# Read data from SFN4 in Burgos
trees_pr09_if4 <-getNFI('Burgos', nfi.nr = 4, dt.nm = "PCMayores")
plots_pr09_if4 <-getNFI('Burgos', nfi.nr = 4, dt.nm = "PCParcelas") 
maps_pr09_if4 <-getNFI('Burgos', nfi.nr = 4, dt.nm = "PCDatosMap")

######################################################################

# SNF2 Data Processing
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

######################################################################


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
head(selected_plots)
names(plot_esp_pr09_if2)
names(trees_pr09_if2)

# In all cases, we have a list of selected plots 
# (ESTADILLO)

######################################################################
ls()
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
plots.if2 <- plots.39.if2[plots.39.if2$ESTADILLO %in% 
    estadillos$ESTADILLO,]


######################################################################


######################################################################


######################################################################


######################################################################


######################################################################



q()
n
