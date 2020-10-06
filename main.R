library(tercen)
library(dplyr)

(ctx = tercenCtx()) %>% 
  select(.x, .y) %>% 
  transmute(difference = .y + .x) %>%
  ctx$addNamespace() %>%
  ctx$save()
