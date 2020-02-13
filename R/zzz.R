.onLoad<- function(libname, pkgname) {
  if(!all(is.element(paste0("aspep",outer(c(2007,2009:2012),c(".rda","_gov.rda"),paste0)),
                     list.files(file.path(find.package("dataASPEP"),"data"))))){
    packageStartupMessage(
"Data will be downloaded now:
")
get_data_from_web()

  }}