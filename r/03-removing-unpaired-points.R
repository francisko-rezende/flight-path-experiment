library(tidyverse)

missing_paired <- read_csv(here::here("data", "cal-unpaired-missing-xypts.csv"))

missing_paired %>% 
  drop_na()

missing_unpaired <- read_csv(here::here("data", "cal-unpaired-not-missing-xypts.csv"))

missing_unpaired %>% 
  drop_na()


