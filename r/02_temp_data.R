library(googlesheets4)
library(tidyverse)
library(janitor)

temp_gdrive <- gs4_find("temp_data")

temp <- read_csv("data/EasyLog USB.txt") %>% 
  select(-1)

# sheet_write(temp, ss = temp_gdrive$id, sheet = "Sheet1")  


sheet_append(temp, ss = temp_gdrive$id, sheet = "Sheet1")

temp_data <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1ZPu6dd9x_iNd2lfy8lR7IfTSIMnT5wHme8AzuJ1zrag/edit#gid=0") %>% 
  janitor::clean_names()


ggplot2::ggplot(data = temp_data, aes(x = time, y = celsius_c)) +
  ggplot2::geom_line()
