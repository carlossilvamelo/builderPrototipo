rm(list = ls())
#------------------------ imports ------------------------
#install.packages("readxl")
#install.packages("stringr")
#install.packages("shinyjs")
#install.packages("shinyWidgets")
#install.packages("shinydashboard")
require(shinydashboard)
#devtools::install_github("hadley/shinySignals")
#install.packages("plyr")
#library("readxl")
#library("doParallel")
library("stringr")
library("stringi")
library("shinyjs")
#library("stats")
#library("compiler")
#library(plyr)
library(shiny)
library(shinyWidgets)
library(jsonlite)
library(httr)
#install.packages("devtools")
library(devtools)

#----------------------- initializarions -----------------

ROOT = paste(getwd(),"/",sep = "")

source("functions.R")
#--------------------------------

