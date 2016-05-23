# month plot
par(mar = c(5,6,2,2))
monthplot(UKDriverDeaths,
          main = "UK Road Casualities 1969-1984",
          las = 1, labels = month.abb,
          cex.axis = 1.2, cex.main = 1.4,
          ylab = "")
mtext("driver deaths", side = 2, line = 4, 	cex = 1.3)
