install.packages("pracma") #only if you have never installed it
library(pracma) #read the library - need it every time
coord.data <- read.csv(file.choose()) #choose the csv containing desired coordinates
x <- coord.data$x; y <- coord.data$y

x_new <- seq(min(x), max(x), length.out = 500)
y_new <- pchip(x, y, x_new)
plot(x, y, col = "red", pch = 19, main = "PCHIP Interpolation",
  xlab = "x", ylab = "y")
lines(x_new, y_new, col = "blue", lwd = 2)
legend("bottomright", legend = c("Original Data", "PCHIP Interpolation"),
  col = c("red", "blue"), pch = c(19, NA), lty = c(NA, 1))