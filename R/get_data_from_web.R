get_data_from_web<-function(directory=
                              if(file.exists(try(file.path(find.package("datagovuk"),'inst/extdata')))){
  file.path(find.package("datagovuk"),'inst/extdata')}else{NULL}){
    data.url<-"https://opendata.arcgis.com/datasets/0af12ea117ef4924b505f285bd2214c4_0.zip?outSR=%7B%22latestWkid%22%3A27700%2C%22wkid%22%3A27700%7D"
    downloader::download(url=data.url,destfile=file.path(directory,"Parish_and_Non_Civil_Parished_Areas_December_2017_Full_Clipped_Boundaries_in_England_and_Wales.zip"))
}
