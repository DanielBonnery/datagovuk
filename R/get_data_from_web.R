get_data_from_web<-function(directory=
                              if(file.exists(try(file.path(find.package("datagovuk"),'inst/extdata')))){
  file.path(find.package("datagovuk"),'inst/extdata')}else{NULL}){
    tmpf  <-tempfile()
    data.url<-"https://dataworks.calderdale.gov.uk/download/parish-boundaries/80326e22-bba8-44ac-947d-2cab4ae1a78b/Parish%2520boundary.shp.zip"
    xxxx=try(download.file(url=data.url,destfile = tmpf,method="wget",extra="--random-wait --retry-on-http-error=503"))
    Sys.sleep(sample(10, 1))
    x=unzip(tmpf,exdir = directory)
}
