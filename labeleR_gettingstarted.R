
#RUN EVERYTHING
{
  path <- tempdir()
  setwd(path)
  
  # Loading necessary packages ####

  install.packages("labeleR")
  library(labeleR)


  # in case tinytex returns errors, try unistalling it first
  # tinytex::install_tinytex()
  # tinytex::install_tinytex(version = "2023.12") # latest version has some troubles!

  # install tinytex if it is not installed
  if (!require(tinytex)) {
    tinytex::install_tinytex()
    tinytex::tlmgr_install("qrcode")
    tinytex::tlmgr_install("pspicture")
    tinytex::tlmgr_install("changepage")
  }


  {
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
}
