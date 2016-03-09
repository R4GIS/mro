## ----living, fig.width = 7, fig.height=4------
library(ggplot2)
data <- read.csv("living.csv")
colors2 <- c("lightblue","skyblue3")
data$LIVING <- factor(data$LIVING, levels =
                           c("Other group quarters",
                             "Nursing home",
                             "Alone in household",
                             "With others in household"))
twolinelabels <- c("Other group\nquarters",
                 "Nursing home",
                 "Alone in\nhousehold",
                 "With others\nin household")
data$AGE <- factor(data$AGE, levels = c("70-79 yrs",
                                         "80-89 yrs",
                                         "90-99 yrs",
                                         "100+ yrs"))
g <- ggplot(data, aes(x = LIVING, y = PERCENT,
                      fill = SEX))
g + geom_bar(stat="identity", position = "dodge") +
    scale_x_discrete(labels = twolinelabels) +
    scale_fill_manual(values = colors2,
                      limits = c("Male","Female")) +
    scale_y_continuous(breaks = c(0,30,60)) +
    coord_flip() + facet_grid(. ~ AGE) +
    theme_bw(16) +
    theme(axis.ticks.length = unit(0, "cm"),
          legend.title = element_blank(),
          legend.position = c(.9,-.2),
          legend.key = element_blank(),
          legend.key.size = unit(.8, "lines"),
          panel.grid.major.y = element_blank(),
          panel.grid.minor = element_blank(),
          strip.background = element_rect(fill="grey90"),
          strip.text.x=element_text
            (margin = margin(t=5, b=5)),
          plot.title = element_text(hjust = 0, size = 16,
                                    face = "bold"),
          plot.margin = margin(8,8,24,8)) +
    xlab(NULL) + ylab("percent") +
    ggtitle ("Living Arrangements of Older Age-Sex Groups")

