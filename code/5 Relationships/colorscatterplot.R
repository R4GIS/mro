## ----colorscatterplot, fig.width = 5, fig.height = 5----
# Scatterplot with continents labeled by color
data <- read.csv("countries2012.csv")
colors6 <- c("orange","cyan","blue","green",
              "black", "red")
plot(data$GDP/1000,data$TFR, bty = "l",
     col = colors6[data$CONTINENT],
     xlab = "GDP per capita (in 1000s $US)",
     ylab = "average births per woman",
     main = "Total Fertility Rate vs. GDP, 2012",
     las = 1, ylim = c(1,8), cex.main = 1.5, cex.lab = 1.3,
     cex.axis = 1.1)
legend("topright", pch = 21, legend=levels(data$CONTINENT),
       col = colors6, bty = "n")

