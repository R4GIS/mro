## ----boxplot, fig.width = 7, fig.height = 4.5----
# Box plots
par(mar = c(5,9,4,2))
data <- read.csv("countries2012.csv")
data$CONTINENT <- reorder(data$CONTINENT, data$TFR, median)
boxplot(TFR ~ CONTINENT, data, horizontal = TRUE,
        ylim = c(1,8),
        col = "lightblue",
        main = "Fertility Rate Distributions by Continent",
        xlab = "average births per woman", cex.main = 1.7,
        cex.lab = 1.4, cex.axis = 1.4, las = 1)
abline (v = 1:8, col = "grey95")
abline (v = 2, col = "red")
text (x = 2, y = .5, "<- replacement rate", col = "red",
      pos = 4)

