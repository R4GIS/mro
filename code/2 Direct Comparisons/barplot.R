## ----barplot, fig.width = 7, fig.height = 4----
TFR <- c(2.6, 1.9, 2.0, 3.3, 2.5, 2.3, 2.5)
names(TFR) <- c("Belize", "Costa Rica", "El Salvador",
               "Guatemala","Honduras", "Nicaragua",
               "Panama")
TFR <- sort(TFR)
par(mar=c(5,8,4,2))
barplot (TFR, horiz = TRUE,
         col = "lightblue",
         border = "lightblue",
         main ="Central America, Fertility Rate 2012",
         xlab = "average births per woman",
         xlim = c(0,4),
         cex.lab = 1.4,
         cex.main = 1.7,
         cex.names = 1.4,
         las = 1)
abline(v = 1:4, col = "grey90")

