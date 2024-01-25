setwd("/Users/juliag.dealedo/Desktop/labeleR_workshop-main")

library(labeleR)
library(readxl)

herbarium.table.ecoinfo <- read_excel("files/especies_herbario_ecoinfo.xlsx")

colnames(herbarium.table.ecoinfo)

create_herbarium_label(
  data = herbarium.table.ecoinfo,
  path = "labeleR_output",
  filename = "herbarium_lecythidaceae",
  qr = "qr",
  title ="LECYTHIDACEAE OF PERU" ,
  subtitle = "Project: plant distribution of tropical ecosystems",
  family.column = "Family",
  taxon.column = "Taxon",
  author.column = "Author",
  det.column = "Det",
  date.det.column = "Det_date",
  location.column = "Department",
  area.description.column = "Area",
  latitude.column = "Latitude",
  longitude.column = "Longitude",
  elevation.column = "Elevation",
  field1.column = "Growth_form",
  field2.column = "Observations",
  field3.column = "Height",
  collector.column = "Main_collector",
  collection.column = "Collection_code",
  assistants.column = "Collectors",
  date.column = "Date"
)


# Certificados participación

participation.table.ecoinfo <- read.csv("files/ponentes_seminarios_ecoinfo.csv")

colnames(participation.table.ecoinfo)

create_participation_certificate(
  data = participation.table.ecoinfo,
  path = "labeleR_output/participation",
  filename = "participation_aeet",
  language = "Spanish",
  name.column = "ponente",
  affiliation.column = "afiliacion",
  comm.type.column = "tipo_com",
  title.column = "seminario",
  date.column = "fecha",
  #type = "online",
  #event = "las charlas",
  freetext = "las charlas organizadas por el grupo de Ecoinformática de la AEET",
  signer = "Elena Quintero",
  signer.role = "Equipo de Ecoinformática",
  rpic = "files/aeet.png",
  lpic = "files/ecoinfo.png"
)



# DIPLOMA

library(gsheet)
diploma <- gsheet2tbl("1R0lTD8VrCp9di1oNhQ_M_lC1qG0F_zDG_Yl2DBn6XYg")


create_attendance_certificate(
  data = diploma[1:2,],
  path = "labeleR_output/diplomas",
  filename = "diploma_experto",
  language = "Spanish" ,
  name.column = "nombre",
  #type = "class",
  title = "Taller de labeleR: genera tus propios certificados y etiquetas!",
  date = "25/01/2024",
  hours = "1",
  freetext = "impartido por Julia e Ignacio",
  signer = "Julia G. de Aledo",
  signer.role = "Equipo labeleR",
  rpic = "files/ecoinfo.png",
  lpic = "files/labeler_logo.png",
  signature.pic = "files/firma.png",
  template = "Diploma.Rmd"
)




