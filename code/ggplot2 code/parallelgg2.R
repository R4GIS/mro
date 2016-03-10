## ----parallelgg2----
#+ fig.width = 7, fig.height = 5
library(ggplot2)
library(tidyr)
library(dplyr)
rescale <- function(x) {(x-min(x))/(max(x)-min(x))}
data <- read.csv ("countries2012.csv")
data[,3:6] <- lapply(data[,3:6], rescale)
x <- gather(data, key, value, -COUNTRY, -CONTINENT)
colors6 <- c("orange","cyan","blue","green",
              "black", "red")
colors3 <- colors6[1:3]
x <- x %>% filter(CONTINENT %in% c("Africa","Asia",
                                   "Europe"))
g <- ggplot(x, aes(x = key, y = value, group = COUNTRY,
              color = CONTINENT))
g + geom_line() +coord_cartesian(expand = FALSE) +
    scale_y_continuous(breaks = 0:1,
                       labels = c("min","max")) +
    scale_color_manual(values = colors3) +
    theme_classic(16) +
    theme (axis.line = element_blank(),
           legend.title = element_blank(),
           plot.title = element_text(face = "bold")) +
    ggtitle("World Development Indicators, by Continent") +
    xlab(NULL) + ylab(NULL)
