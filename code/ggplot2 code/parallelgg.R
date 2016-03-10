## ----parallelgg----
#+ fig.width = 7, fig.height = 5
library(ggplot2)
library(tidyr)
rescale <- function(x) {(x-min(x))/(max(x)-min(x))}
data <- read.csv ("countries2012.csv")
data[,3:6] <- lapply(data[,3:6], rescale)
x <- gather(data, key, value, -COUNTRY, -CONTINENT)
colors6 <- c("orange","cyan","blue","green",
              "black", "red")
g <- ggplot(x, aes(x = key, y = value, group = COUNTRY,
              color = CONTINENT))
g + geom_line() + coord_cartesian(expand = FALSE) +
    scale_y_continuous(breaks = 0:1,
                       labels = c("min","max")) +
    scale_color_manual(values = colors6) +
    theme_classic(16) +
    theme (axis.line = element_blank(),
           legend.title = element_blank(),
           plot.title = element_text(face = "bold")) +
    ggtitle("World Development Indicators\nby Continent") +
    xlab(NULL) + ylab(NULL)
