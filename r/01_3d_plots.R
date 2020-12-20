library(tidyverse)
library(plotly)
library(janitor)

b10_t1 <- read_csv("data/b10-t1-waaaaaand-unpaired-points-xyz.csv")

cal2 <- read_csv("data/b10-t1-waaaaaand-paired-points-xyz.csv")

b10_t1_no_na <- b10_t1 %>%
  filter(!is.na(x_1))
  # rename_at()
  # dist.xyz()

b10_t1_dist <- dist(b10_t1_no_na) %>% 
  as.matrix()

sum((b10_t1_dist[row(b10_t1_dist) == col(b10_t1_dist) + 1]))

summary(b10_t1)

range(b10_t1$x_1, na.rm = T)

range(b10_t1$y_1, na.rm = T)

range(b10_t1$z_1, na.rm = T)

plot_ly(data = b10_t1_no_na,
  type = "scatter3d", 
  x = b10_t1$x_1 ,
  y = b10_t1$y_1,
  z = b10_t1$z_1 
  ,mode = "lines")


dat <- tibble(a = c(1, 2, 4, 8),
              b = rep(0, 4),
              c = rep(0, 4))

dist(dat) %>% 
  diag()

dat <- dist(dat) %>% 
  as.matrix()

dat[row(dat) == col(dat) + 1]


# plotting irca's tracking file -------------------------------------------

b15_t2 <- readr::read_csv(here::here('data', 'b15-t2-wandOutput-unpaired-points-xyz.csv'))  # begin by reading in the file

b15_t2_no_na <- b15_t2 %>% 
  filter(!is.na(x_1))  # remove missing points (this step doesn't seem to make a difference according to my own tests, I left it just in case though)

plot_ly(data = b15_t2_no_na,
        type = "scatter3d", 
        x = b15_t2$x_1 ,
        y = b15_t2$y_1,
        z = b15_t2$z_1 
        ,mode = "lines") does 


# b195 t1 -----------------------------------------------------------------

b195_t1 <- readr::read_csv(here::here("data", "B195 T1-xypts.csv"))

