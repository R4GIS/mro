## ----histogram, fig.width = 7, fig.height = 5----------------------------
x <- read.csv("countries2012.csv")
hist(x$TFR, breaks = seq(from = 1, to = 8), col = "lightblue",
     main = "Fertility Rate by Country",
     xlab = "average births per woman",
     xlim = c(1,8), ylim = c(0,80),
     cex.main = 1.7, cex.lab = 1.4, las = 1)

