## ----graphpaper, fig.width = 7, fig.height = 7---------------------------
par(pin = c(5,5))
plot(25,25, xlim = c(-15,15), ylim = c(-15,15),
     axes = FALSE,ann = FALSE, xaxs ="i", yaxs = "i",
     asp = 1)
abline(v=-15:15, h= -15:15, col = "grey80")

