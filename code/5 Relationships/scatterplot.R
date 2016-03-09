## ----scatterplot, fig.width = 5, fig.height = 5----
data <- read.csv("countries2012.csv")
plot(data$GDP/1000,data$TFR, xpd = TRUE, bty = "l",
     main = "Total Fertility Rate vs. GDP, 2012",
     xlab = "GDP per capita (in 1000s $US)",
     ylab = "average births per woman",
     ylim = c(1,8), cex.main = 1.5,
     cex.lab = 1.3, cex.axis = 1.1,
     col = "cornflowerblue", las = 1)

