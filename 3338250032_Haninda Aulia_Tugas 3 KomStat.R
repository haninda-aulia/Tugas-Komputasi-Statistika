library(DAAG)
data(airquality)
print(airquality)

# Menampilkan struktur data
str(airquality)
range(airquality$Wind)

# Histogram dengan break mulai dari 0
hist(airquality$Wind, 
     breaks = 1.7 + (0:4)*5, 
     ylim = c(0,100), 
     xlab = "Wind (MPH)", 
     main = "Histogram A: Breaks di 1.7, 6.7, 11.7, ...")

# Estimasi kepadatan
dens <- density(airquality$Wind)

hist(airquality$Wind, 
     breaks = 1.7 + (0:4)*5,
     ylim = c(0,0.12),
     probability = TRUE,
     xlab = "Wind (MPH)", 
     main = "Histogram + Density Curve")

lines(dens, col = "blue", lwd = 3)

# Boxplot dengan base R
boxplot(airquality$Wind, horiz = FALSE,
        main = "Boxplot Wind",
        xlab = "Wind(MPH)")

# Stem-and-leaf plot 
stem(airquality$Wind[airquality$Month == "6"])

# Scatterplot hubungan Kecepatan Angin (Wind) terhadap Suhu (Temp)
xyrange <- range(c(airquality$Wind, airquality$Temp), na.rm = TRUE)

plot(Temp ~ Wind, data = airquality,
     xlim = xyrange, ylim = xyrange, 
     pch = 16, pty = "s",
     col = "steelblue",
     main = "Hubungan Kecepatan Angin dan Suhu",
     xlab = "Kecepatan Angin (Wind - mph)", 
     ylab = "Suhu Udara (Temp - °F)")

# Tambahkan rug plot pada sumbu x dan y
rug(airquality$Wind)             # Sumbu bawah (X)
rug(airquality$Temp, side = 2)   # Sumbu kiri (Y)

# Tambahkan garis y = x sebagai acuan
abline(0, 1, col = "red", lwd = 2)