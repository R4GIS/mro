## ----splomall, fig.width = 7, fig.height = 7----
library(lattice)
data <- read.csv ("countries2012.csv")
data$GDP <- data$GDP/1000
splom(data[,c("GDP","TFR","LIFEEXP","CHMORT")],
      scales = list(y = list(tick.number = 0)),
      main = list(label = paste("World Development",
                                "Indicator Correlations"),
      cex = 1.7), xlab=NULL)

