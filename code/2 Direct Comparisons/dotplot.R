## ----dotplot, fig.width = 7, fig.height = 8------------------------------
source("dotchartsolid.R")
data <- read.csv("countries2012.csv")
index <- seq(from = 1,to = 179, by = 4)
sample <- data$TFR[index]
names(sample) <- data$COUNTRY[index]
sample <- sample[order(sample)]
par(mar = c(5, 10, 4, 2))
dotchartsolid(sample, cex = .8, pch = 16, xlim = c(1,7),
              main = "Total Fertility Rate by Country",
              xlab = "average births per woman",
              adj = 1, cex.main = 2,cex.lab = 1.5)
abline (v=2, col = "red")
text (2, 12.5, "replacement rate", cex = .7, pos = 4,
      col = "red")

