library(datagovuk)
library("sp")
library("rgdal")
library(dplyr)
library(leaflet)

shapeData<-datagovuk::dataParishBoundaries()
shapeData<-subset(shapeData,is.element(lad17nm ,c("Allerdale", "Barrow-in-Furness", "Carlisle", "Copeland", "Eden","South Lakeland")))
leaflet()  %>% addTiles() %>% addPolygons(weight=1,data=shapeData) 
