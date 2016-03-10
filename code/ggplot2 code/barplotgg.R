## ----barplotgg----
#+ fig.width = 7, fig.height = 5
library(ggplot2)
central <- factor(c("Costa Rica", "El Salvador",
                    "Nicaragua", "Panama", "Honduras",
                    "Belize","Guatemala"))
centraltfr <- c(1.87, 1.99, 2.34,2.48, 2.51, 2.64, 3.32)
data <- data.frame(COUNTRY = central, TFR = centraltfr)
g <- ggplot(data, aes(COUNTRY,TFR))
g + geom_bar(stat="identity", width = .8,
             fill = "lightblue") +
    coord_flip(expand = FALSE) +
    scale_x_discrete(limits = data$COUNTRY) +
    scale_y_continuous(limits = c(0,4)) +
    theme_bw(16) +
    theme(aspect.ratio = .5,
          axis.line = element_blank(),
          axis.text = element_text(size = rel(1)),
          axis.ticks = element_blank(),
          panel.border = element_blank(),
          panel.grid.major = element_line(colour = "grey90"),
          panel.grid.major.y = element_blank(),
          panel.grid.minor = element_blank(),
          plot.title = element_text(face = "bold")) +
    ggtitle("Central America, Total Fertility Rate 2012") +
     ylab("average births per woman") + xlab("")
