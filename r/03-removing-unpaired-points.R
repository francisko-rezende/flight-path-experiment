library(tidyverse)

missing_paired <- read_csv(here::here("data", "cal-unpaired-missing-xypts.csv"))

missing_paired %>% 
  drop_na() %>% 
  write_csv(., "missing_paired.csv")


