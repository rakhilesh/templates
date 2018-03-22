###### This script contains basic starting point code for any analysis starting with EDA ########

rm(list=ls())                      #Cleaning the environment as R works on RAM
library(checkpoint)                #Required when using MRO version
checkpointArchives()               #View list of check point on disk
checkpoint("2018-03-01")           #Set new check point if required before project start "YYYY-MM-DD"
#checkpointRemove("2018-03-01")

#=====================Project Template================================
#Rename the codes below to match the new project


#install.packages('ProjectTemplate')
library('ProjectTemplate')

#create.project('Proj_Name', minimal=TRUE)

setwd('Proj_Name')
load.project()
dir.create('./output')

#=====================Package loading================================

packages <- c("ggplot2", "dplyr", "shiny","shinythemes", "easypackages", "corrplot")

if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}

easypackages::libraries(packages)

#=================== Data import======================================

dat <- #read.csv#
  
#Split into train and test or train/test/validation
dat$id <- 1:nrow(dat)
train <- dat %>% dplyr::sample_frac(.75)
test  <- dplyr::anti_join(dat, train, by = 'id')

#=================== EDA =============================================

#=================== Univariate Analysis =============================
# Look at the target variable

#=================== BiVariate Analysis ==============================
# Correlation - Use corrplot for visualizations
# Compare the highest correlated variables vs target variables

#=================== Multi variate Analysis ==========================

#=================== Feature generation ==============================

#=================== Model building ==================================

#=================== Model testing ===================================

#=================== Model iterations ================================

#=================== Model validation ================================

#=================== Report and recommendation =======================
#Convert the final codes into R Markdown report