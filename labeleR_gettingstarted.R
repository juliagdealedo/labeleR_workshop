
#RUN EVERYTHING
{
path <- tempdir()
setwd(path)

# Loading necessary packages ####
if(!require(devtools)){ 
  install.packages("devtools")
  #only needed if it is not in CRAN
}

if(!require(tinytex)){
tinytex::install_tinytex()
  #install tinytex if it is not installed
}

#installing labeleR ####
#devtools::install_github("EcologyR/labeleR")
install.packages("labeleR")
library(labeleR)




create_collection_label(
  data = collection.table,
  path = "labeleR_output",
  filename = "labels",
  field1.column = "field1",
  bgcolor = "FFFFFF",  #White is "FFFFFF",
  textcolor = "000000" #Black is "000000"
)

setwd("~")
}
