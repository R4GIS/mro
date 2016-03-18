## ----horizdividedbarchart, fig.width = 7, fig.height = 4.5----
par(mar=c(5, 8, 4, 2))
fathers <- read.table("fathers.txt")
columns <- c("COLLDEG", "SOMECOLL", "HSDEG","NOHSDEG")
data <- as.matrix(subset(fathers, select = columns))
colors4 <- c("lightblue", "skyblue3", "rosybrown1",
             "rosybrown3")
edugroups <- c("College degree", "Some college",
               "H.S. degree", "No H.S. degree")
barplot (data, names.arg = edugroups, horiz = TRUE,
         col = colors4, border = colors4, xlab = "percent",
         ylim = c(0,5.5), cex.axis = 1.3, cex.names = 1.2,
         cex.lab = 1.3, las = 1)
legend ("top", legend=fathers$AGE, fill = colors4,
       border = colors4, bty = "n", cex = 1.1,
       horiz = TRUE)
title ("Father's Age at First Child, by Education",
       cex.main = 1.6)

