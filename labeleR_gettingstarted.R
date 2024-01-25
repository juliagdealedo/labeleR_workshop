
#RUN EVERYTHING

  path <- tempdir()
  setwd(path)
  
  # Loading necessary packages ####

  install.packages("labeleR")
  library(labeleR)


    tinytex::install_tinytex()
    tinytex::tlmgr_install(pkgs = c( "zref", "needspace", "pagecolor",
                                     "bookmark", "changepage", "fp",
                                     "mdframed", "ms", "pgf", 
                                     "pspicture", "qrcode"))


  {  #Run the function to use the packages for the first time...


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

