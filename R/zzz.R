.onLoad<- function(libname, pkgname) {
  if(!all(is.element(paste0("aspep",outer(c(2007,2009:2012),c(".rda","_gov.rda"),paste0)),
                     list.files(file.path(find.package("dataASPEP"),"data"))))){
    packageStartupMessage(
"Data will be downloaded now:
")
    
    
    
    if(!file.exists(try(file.path(find.package("datagovuk"),'inst')))){
      dir.create(file.path(find.package("datagovuk"),'inst'))}
    
    if(!file.exists(try(file.path(find.package("datagovuk"),'inst/extdata')))){
      dir.create(file.path(find.package("datagovuk"),'inst/extdata'))}
get_data_from_web()

  }}