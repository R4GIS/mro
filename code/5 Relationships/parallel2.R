## ----parallel2, fig.width = 7, fig.height = 5----
parcoord(data[,c("GDP","LIFEEXP","CHMORT","TFR")],
         col = colors6[data$CONTINENT], xlim=c(1,5.25),
         main = "World Development Indicators, by Continent",
         sub = "(axis variables rearranged)",
         cex.main = 1.4, xaxs = "i")
axis(2, at = c(0,1), labels = c("min","max"), las = 1,
     tick = FALSE)
legend("right", lty = 1, legend = levels(data$CONTINENT),
       col = colors6, cex = .9, bty = "n")

