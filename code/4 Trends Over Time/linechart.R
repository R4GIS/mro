## ----linechart, fig.width = 7, fig.height = 4.5--------------------------
# Line chart
df <- data.frame (year = seq(2005,2015),
                  pop = c(296, 298, 301, 304, 307, 308,
                          311, 313, 315, 318, 320))
plot(df$year, df$pop, type = "l",
     main = "U.S. Population, 2005 - 2015", xlab = "",
     ylab = "millions of people", las = 1,
     cex.axis = 1.2, , cex.lab = 1.4, cex.main = 1.7)

