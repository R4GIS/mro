
## ----likert, fig.width = 7, fig.height = 5----
library(HH)
Question <- c("Are a waste of time",
              "Help develop good\nproblem solving skills",
              "Promote teamwork and\ncommunication",
              "Are a better form of\nentertainment than TV")
responses <- data.frame(c(24,16,23,30),
                        c(16,20,28,24),
                        c(33,47,37,34),
                        c(26,17,10,11))
colnames(responses) <- c("not true for\nmost games",
                         "unsure",
                         "true for some games,\nbut not others",
                         "true for\nmost games")
data <- cbind(responses, Question)
likert(Question ~ ., data,
       ReferenceZero = 2,
       positive.order = TRUE,
       main = "Public Attitudes Toward Video Games",
       xlab = paste("% of all adults who think the",
                    "above qualities are..."),
       ylab = "")

