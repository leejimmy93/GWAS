library(multtest)
library(gplots)
# library(LDheatmap) # this could not be succesfully installed 
library(genetics)
library(EMMREML)
library(compiler) #this library is already installed in R
library("scatterplot3d")

# install GAPIT package 
source("http://zzlab.net/GAPIT/previous/gapit_functions_20151103.txt")
# intall EMMA package 
source("http://zzlab.net/GAPIT/emma.txt")

# set working directory 
setwd("/Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/ruijuanli/GWAS/GAPIT_permutation")

myY=read.table("/Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/ruijuanli/GWAS/permute.G.txt", head=TRUE)
myG=read.table("/Network/Servers/avalanche.plb.ucdavis.edu/Volumes/Mammoth/Users/ruijuanli/GWAS/246_7220_chr14_sorted.hmp.txt", head=F)
myGAPIT <- GAPIT(Y=myY, G=myG, PCA.total=0, kinship.algorithm=c("EMMA"))
