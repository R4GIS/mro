## ----colorscatterplotgg----
#+ fig.width = 7, fig.height = 5
library(ggplot2)
data <- read.csv ("countries2012.csv")
colors6 <- c("orange","cyan","blue","green",
              "black", "red")
g <- ggplot(data, aes(GDP/1000, TFR, color = CONTINENT))
g + geom_point(shape = 1, size =3) +
    scale_color_manual(values = colors6) +
    theme_classic(16) +
    theme(plot.title = element_text(face = "bold"),
          legend.title = element_blank()) +
    ggtitle("Total Fertility Rate vs. GDP, 2012") +
    xlab ("GDP per capita (in 1000s $US)") +
    ylab ("average births per woman")
