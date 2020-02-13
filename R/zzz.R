.onLoad<- function(libname, pkgname) {
  if(!file.exists(try(file.path(find.package("datagovuk"),'inst/extdata/ukparishboundaries.zip')))){
    packageStartupMessage(
"Data will be downloaded now:
")
    
    
    
    if(!file.exists(try(file.path(find.package("datagovuk"),'inst')))){
      dir.create(file.path(find.package("datagovuk"),'inst'))}
    
    if(!file.exists(try(file.path(find.package("datagovuk"),'inst/extdata')))){
      dir.create(file.path(find.package("datagovuk"),'inst/extdata'))}
get_data_from_web()

  }}