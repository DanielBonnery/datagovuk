dataParishBoundaries<-function(package="rgdal"){
  x=file.path(find.package("datagovuk"),'inst/extdata/Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.zip')
  unzip(x,exdir=tempdir())
  if(package=="rgdal"){
    shapeData <- rgdal::readOGR(file.path(tempdir(),"Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.shp"))
    shapeData <- spTransform(shapeData, CRS("+proj=longlat"))

  }
  shapeData}
