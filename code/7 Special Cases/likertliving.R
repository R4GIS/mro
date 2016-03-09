## ----likertliving, fig.width = 8, fig.height = 5----
library(HH)
library(tidyr)
library(dplyr)
data <- read.csv("living.csv")
newlevels <- c("Other group quarters","Nursing home",
               "Alone in household",
               "With others in household")
data$LIVING <- factor(data$LIVING, levels = newlevels)
ldata <- spread(data, key = LIVING, value = PERCENT) %>%
    mutate(GROUP = paste(AGE,SEX))
likert(GROUP~., ldata, positive.order = TRUE,
       main = "Living Arrangments of Older Age-Sex Groups",
       xlab = "percent", ylab = "")

