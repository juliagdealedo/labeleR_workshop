
#RUN EVERYTHING
{
path <- tempdir()
setwd(path)

# Loading necessary packages ####

  install.packages("labeleR")
  library(labeleR)


if(!require(tinytex)){
tinytex::install_tinytex()
  #install tinytex if it is not installed
}


create_collection_label(
  data = collection.table,
  path = "labeleR_output",
  filename = "labels",
  field1.column = "field1",
  bgcolor = "FFFFFF",  #White is "FFFFFF",
  textcolor = "000000" #Black is "000000"
)

setwd("~")

cat("\n\n \U1F44D Everything has been correctly installed \U2714\n")
}
