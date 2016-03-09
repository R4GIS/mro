## ----micromap, fig.width = 7.5, fig.height = 10--------------------------
library(micromapST)
data <- read.csv("acs2014.csv", row.names = 1)
data <- data[order(data$Income),]

panelDesc <- data.frame(
    type = c("map", "id", "dot", "dot"),
    lab1 = c("", "", "Median Age", "Median Income"),
    lab3 = c("", "", "", "in 2014 inflation-adjusted $"),
    col1 = c(NA, NA, "Age", "Income"))

micromapST(data,panelDesc, rowNames = "full", sortVar="Age",
           ascend = FALSE,
           title = paste("2010-2014 American Community",
                       "Survey: State Age and Income"),
           details = list(Title.cex = 1.4))

