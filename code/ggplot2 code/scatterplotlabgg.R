## ----scatterplotlabgg----
#+ fig.width = 5, fig.height = 5
library(ggplot2)
data <- read.csv("countries2012.csv")
usdata <- data[data$COUNTRY == "United States",]
g <- ggplot(data, aes(x = GDP/1000, y = TFR))
g + geom_point(shape = 1, color = "cornflowerblue") +
    theme_classic(16) +
    theme(plot.title = element_text(face = "bold")) +
    ggtitle("Total Fertility Rate vs. GDP, 2012") +
    xlab("GDP per capita (in 1000s $US)") +
    ylab("average births per woman") +
    geom_point(data = usdata, aes(x = GDP/1000, y = TFR),
               color = "magenta4") +
    geom_text(data = usdata, aes (x = GDP/1000, y = TFR,
                                  label = COUNTRY),
              color = "magenta4", nudge_x = 6, nudge_y = .25)
