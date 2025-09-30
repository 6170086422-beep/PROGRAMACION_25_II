
# importar datos ----------------------------------------------------------



# importar csv ------------------------------------------------------------

library(readr)
fb <- read_csv("C:/Users/Lenovo/Downloads/LA MOLINA 2014 POTATO WUE (FB) - fb.csv")
View(fb)

# importar xlsx -----------------------------------------------------------

library(readxl)
Bd_excel <- read_excel("C:/Users/Lenovo/Downloads/LA MOLINA 2014 POTATO WUE (FB) (1).xlsx", 
                       sheet = "fb")
View(Bd_excel)

# google sheets -----------------------------------------------------------

library(googlesheets4)
library(tidyverse)

url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?pli=1&gid=172957346#gid=172957346"
gs <- url %>% 
  as_sheets_id()

fb <- gs %>% 
  range_read(sheet = "fb") 
#1.darle url
#2. extraer informacion de la hoja de calculo
#3. importar hooja de calculo

