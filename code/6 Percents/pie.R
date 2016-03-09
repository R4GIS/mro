## ----pie, fig.width = 7, fig.height = 5-------
data <- read.table ("fathers.txt")
colors4 <- c("lightblue", "skyblue3", "rosybrown1",
             "rosybrown3")
pie(data[,"NOHSDEG"], labels = data$AGE, col = colors4,
    cex = 1.5)
mtext(paste("Fathers without High School Degrees:\n",
              "Age at First Child"), side = 3,
      cex = 1.7, font = 2)

