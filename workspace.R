library(tercen)
library(dplyr)

options("tercen.workflowId" = "wwww")
options("tercen.stepId"     = "dddd")

getOption("tercen.workflowId")
getOption("tercen.stepId")

ctx <- tercenCtx()

ctx %>% 
  select(.x, .y) %>% 
  transmute(sum = .y + .x) %>%
  ctx$addNamespace() %>%
  ctx$save()

