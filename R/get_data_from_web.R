get_data_from_web<-function(directory=
                              if(file.exists(try(file.path(find.package("datagovuk"),'inst/exdata')))){
  file.path(find.package("datagovuk"),'inst/exdata')}else{NULL}){
    tmpf  <-tempfile()
    data.url<-"https://dataworks.calderdale.gov.uk/download/parish-boundaries/80326e22-bba8-44ac-947d-2cab4ae1a78b/Parish%2520boundary.shp.zip"
    xxxx=try(download.file(url=data.url,destfile = tmpf,method="wget",extra="--random-wait --retry-on-http-error=503"))
    Sys.sleep(sample(10, 1))
    x=unzip(tmpf,exdir = tempdir())
    y<-read.fwf(x,width=format.table$length,
                header=FALSE,
                colClasses=c("character","numeric","numeric")[format.table$class],fill=TRUE)
}
