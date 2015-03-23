pollution <- read.csv("data/avgpm25.csv", colClasses = c("numeric", "character", "factor", "numeric", "numeric"))
head(pollution)
par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0)) 
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")                 
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  plot(Temp, Ozone, main = "Ozone and Temperature")
  mtext("Ozone and Weather in New York City", outer = TRUE)
})
xyplot(y ~ x | f, panel = function(x, y) {
  panel.xyplot(x, y)
  panel.abline(h = median(y), lty = 2)
  panel.lmline(x, y, col = 2)
})