library(tercen)
library(dplyr)

ctx <- tercenCtx()

ctx %>% 
  select(.x, .y) %>% 
  transmute(sum = .y + .x) %>%
  ctx$addNamespace() %>%
  ctx$save()
