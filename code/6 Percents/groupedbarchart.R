## ----groupedbarchart, fig.width = 7, fig.height = 5----
fathers <- read.table("fathers.txt")
columns <- c("NOHSDEG", "HSDEG", "SOMECOLL", "COLLDEG")
data <- as.matrix(subset(fathers, select = columns))
colors4 <- c("lightblue", "skyblue3", "rosybrown1",
             "rosybrown3")
edugroups <- c("No H.S. degree", "H.S. degree",
               "Some college", "College degree")
barplot(data, names.arg = edugroups, beside=TRUE,
        col = colors4, border = colors4, ylab = "percent",
        ylim = c(0,58), cex.axis = 1.3, cex.names = 1.1,
        cex.lab = 1.3, las = 1)
legend("top", fill = colors4, border = colors4, bty = "n",
        legend=fathers$AGE, cex = 1.2, horiz = TRUE)
title ("Father's Age at First Child, by Education",
       cex.main = 1.6)

