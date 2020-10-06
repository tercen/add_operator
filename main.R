library(tercen)
library(dplyr)

(ctx = tercenCtx()) %>% 
  select(.x, .y) %>% 
  transmute(sum = .y + .x) %>%
  ctx$addNamespace() %>%
  ctx$save()
