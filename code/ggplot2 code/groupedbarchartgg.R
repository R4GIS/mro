## ----groupedbarchartgg----
#+ fig.width = 7, fig.height = 5
library(tidyr)
library(ggplot2)
fathers <- read.table("fathers.txt")
data <- gather(fathers ,key = EDUCATION, value = PERCENT,
               -AGE)
colors4 <- c("lightblue", "skyblue3", "rosybrown1",
             "rosybrown3")
g <- ggplot(data, aes(x = EDUCATION, y = PERCENT,
                      fill = AGE))
g + geom_bar(stat = "identity", position = "dodge") +
    scale_fill_manual(values = colors4) + theme_classic(16) +
    theme(axis.line = element_blank(),
          axis.ticks.length = unit (0,"cm"),
          panel.grid.major = element_line(colour = "grey90"),
          panel.grid.major.x = element_blank(),
          legend.position="top",
          legend.title = element_blank(),
          plot.title = element_text(face = "bold")) +
    ggtitle ("Father's Age at First Child, by Education") +
    xlab(NULL) + ylab("percent")
