## ----pie2by2, fig.width = 5.5, fig.height = 4----
data <- read.table("fathers.txt")
colors4 <- c("lightblue", "skyblue3", "rosybrown1",
             "rosybrown3")
par(mfrow = c(2,2), mar=c(1,0,1,0), oma = c(0,2,3,0))
pietitles <- c("No H.S. degree", "H.S. degree",
               "Some college", "College degree")
for (i in 2:5) {
    pie(data[,i], labels = data$AGE,
        main = pietitles[i-1], col = colors4)
}
mtext("Father's Age at First Child, by Education",
      side=3, line=1, outer=TRUE, cex=1.5, font=2)
mtext("Not recommended!", side = 2, font = 2,
      outer = TRUE, col = "red")

