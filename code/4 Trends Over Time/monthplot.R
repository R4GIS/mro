## ----monthplot, fig.width = 8.5, fig.height = 4.5----
# Month plot
par(mar=c(5,6,2,2))
monthplot(UKDriverDeaths,
          main="UK Road Casualities 1969-1984",
          labels = month.abb, las = 1, ylab="",
          cex.axis = 1.2, cex.main = 1.4)
mtext("driver deaths", side = 2, line = 4, cex = 1.3)

