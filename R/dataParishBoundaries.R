#' Unzips and converts to R spatial data the external dataset Parish_and_Non_ ... _Wales.zip
#'
#' @details when the package datagovuk is first loaded, the dataset  
#' 'Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.zip' is downloaded
#' from data.gov.uk and saved in 
#' file.path(find.package("datagovuk"),'inst/extdata/Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.zip')
#' This function reads the file and converts it to an object of class
#'  - c("SpatialPolygonsDataFrame", "sp") if package="rgdal" option is used.
#'  @param package used to convert the ESRI .shp file contained in the zip file. (only "rgdal" available now.)
#'  @example 
#'  demo(map.uk.parish)
dataParishBoundaries<-function(package="rgdal"){
  x=file.path(find.package("datagovuk"),'inst/extdata/Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.zip')
  unzip(x,exdir=tempdir())
  if(package=="rgdal"){
    shapeData <- rgdal::readOGR(file.path(tempdir(),"Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.shp"))
    shapeData <- spTransform(shapeData, CRS("+proj=longlat"))
  }
  shapeData}
