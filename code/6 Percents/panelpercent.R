## ----panelpercent, fig.width = 7, fig.height = 3----
library(ggplot2)
library(tidyr)
fathers <- read.table("fathers.txt")
data <- gather(fathers, key = EDUCATION, value = PERCENT,
               -AGE)
levels(data$EDUCATION) <- c("No H.S. degree", "H.S. degree",
                            "Some college", "College degree")
g <- ggplot(data, aes(x = AGE, y = PERCENT))
g + geom_bar(stat = "identity", fill = "lightblue") +
    coord_flip(expand = FALSE) +
    facet_grid(.~EDUCATION) + theme_bw(16) +
    theme(axis.line = element_blank(),
          axis.ticks.length = unit(0, "cm"),
          panel.grid.major.y = element_blank(),
          panel.grid.minor = element_blank(),
          strip.background = element_rect(fill="grey90"),
          strip.text.x =
              element_text(margin = margin(t = 5, b= 5)),
          plot.title = element_text(face = "bold")) +
    ggtitle("Father's Age at First Child, by Education") +
    xlab(NULL) + ylab("percent")

