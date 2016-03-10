## ----horizdividedbargg----
#+ fig.width = 7, fig.height = 4
library(ggplot2)
library(tidyr)
fathers <- read.table("fathers.txt")
data <- gather(fathers, key = EDUCATION, value = PERCENT,
               -AGE)
colors4 <- c("lightblue", "skyblue3", "rosybrown1",
             "rosybrown3")
g <- ggplot(data, aes(x = EDUCATION, y = PERCENT,
                      fill = AGE))
g + geom_bar(stat = "identity") +
    coord_flip(expand = FALSE) +
    scale_fill_manual(values = colors4) + theme_bw(16) +
    theme(panel.grid.major = element_blank(),
          panel.border = element_blank(),
          legend.position="top",
          legend.title = element_blank(),
          legend.key = element_blank(),
          axis.ticks.length = unit(0, "cm"),
          plot.title = element_text(face = "bold")) +
    ggtitle("Father's Age at First Child, by Education") +
    xlab(NULL) + ylab("percent")
