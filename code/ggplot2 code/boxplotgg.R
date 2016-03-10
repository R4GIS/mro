## ----boxplotgg----
#+ fig.width = 7, fig.height = 4.5
library(ggplot2)
data <- read.csv("countries2012.csv")
g <- ggplot(data, aes(x = reorder(CONTINENT, TFR, median),
                      y = TFR))
g + geom_hline(yintercept = 2, color = "red") +
    geom_boxplot(fill="lightblue") +
    annotate("text", x = .75, y = 3.4,
             label = "<- replacement rate", color = "red",
             size = 5) +
    coord_flip() +
    scale_y_continuous(limits = c(1,8), breaks = 1:8) +
    theme_bw(16) +
    theme(axis.text = element_text(size = rel(1)),
          panel.grid.major.y = element_blank(),
          panel.grid.minor = element_blank(),
          plot.title = element_text(face = "bold")) +
    ggtitle ("Fertility Rate Distributions by Continent") +
    xlab(NULL) + ylab("average births per woman")
