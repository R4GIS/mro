## ----likert, fig.width = 7, fig.height = 5----
library(HH)
Question <- c("Are a waste of time",
"Help develop good\nproblem solving skills",
"Promote teamwork and\ncommunication",
"Are a better form of\nentertainment than TV")
data <- data.frame("not true for\nmost games"
                   = c(24,16,23,30),
                   "unsure" = c(16,20,28,24),
                   "true for some games,\nbut not others"
                   = c(33,47,37,34),
                   "true for\nmost games" = c(26,17,10,11),
                   Question, check.names = FALSE)
likert(Question ~ ., data,
       ReferenceZero = 2,
       positive.order = TRUE,
       main = "Public Attitudes Toward Video Games",
       xlab = paste("% of all adults who think the",
                      "above qualities are..."),
       ylab = "")

