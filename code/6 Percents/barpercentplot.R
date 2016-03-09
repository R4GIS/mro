## ----barpercentplot, fig.width = 7, fig.height = 3.5---------------------
source("barpercent.R")
data <- read.table ("fathers.txt")
barpercent(data$NOHSDEG,data$AGE)
mtext(paste("Fathers without High School Degrees: \n",
              "Age at First Child"), side = 3, line = 1,
      font = 2, cex = 1.5)

