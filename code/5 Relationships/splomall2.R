## ----splomall2, fig.width = 7, fig.height = 7----
# Scatterplot matrix with continents in color
library(lattice)
colors3 <- c("orange","cyan","blue")
data <- read.csv ("countries2012.csv")
data$GDP <- data$GDP/1000
data <- droplevels(data[data$CONTINENT %in%
                            c("Europe","Asia","Africa"),])
splom(data[,c("GDP","TFR","LIFEEXP","CHMORT")],
      col = colors3[data$CONTINENT],
      key = list(space="bottom",
                 points=list(pch = 21, col=colors3),
         text=list(levels(data$CONTINENT))),
      main = list(label = paste("World Development",
                                "Indicator Correlations"),
      cex = 1.7), xlab=NULL)

