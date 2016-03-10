## ----ggplottext----
#+ fig.width = 7, fig.height = 5
library(ggplot2)
assign("legend.title=element_text\n(family=\"Times\")",
       factor(c("legend.text =","element_text",
                "(family =","Courier)")))
df <-
    data.frame(x = c(1,2,3,4), y = c(1,2,3,4),
               z = factor(c("strip.text.x = element_",
                              "strip.text.x = element_",
                              "text(color = \"blue\")",
                              "text(color = \"blue\")")),
               w = factor(c("strip.text.y = element_",
                              "strip.text.y = element_",
                              "text(color = \"red\")",
                              "text(color = \"red\")")),
               `legend.title=element_text\n(family="Times")`)
colors4 <- c("lightblue","skyblue3","rosybrown1","rosybrown3")
title <- paste0("plot.title = element_text\n",
               "(color = \"darkgreen\",size = rel(1.5))")
ggplot (df, aes(x,y, color = `legend.title=element_text\n(family="Times")`)) +
    geom_point(size = 3) + facet_grid(w~z) +
    scale_x_continuous(breaks = c(1,3),
                       labels = rep("axis.text.x",2)) +
    scale_y_continuous(breaks = c(1,3),
                       labels = rep("axis.text.y",2)) +
    scale_color_manual(values = colors4,
                       limits = c("legend.text =",
                                  "element_text",
                                  "(family =",
                                  "Courier)")) +
    theme_bw(base_size = 14) +
    theme(strip.text.x = element_text(color = "blue"),
          strip.text.y = element_text(color = "red"),
          plot.title = element_text(color = "darkgreen",
                                    size = rel(1.5)),
          axis.title.x = element_text(face = "italic"),
          axis.title.y = element_text(face = "bold"),
          legend.title=element_text(family="Times"),
          legend.text = element_text (family = "Courier"),
          legend.key = element_blank()) +
    ggtitle(title) +
    xlab("axis.title.x = element_text (face = \"italic\")") +
    ylab("axis.title.y = element_text (face = \"bold\")")
