library(tidyverse)
library(rtweet)


tonga_wrts <- search_tweets("Tonga", n=8000, include_rts = FALSE)


tonga %>% 
  ts_plot("mins")


tonga_wrts %>% ts_plot("days")

tonga_wrts %>% 
  count(lang, sort = TRUE)

tonga_wrts %>% 
  filter(lang == "es") %>% 
  count(location, sort = TRUE) %>% View()


tonga_wrts %>% 
  count(lang, sort = TRUE)
        