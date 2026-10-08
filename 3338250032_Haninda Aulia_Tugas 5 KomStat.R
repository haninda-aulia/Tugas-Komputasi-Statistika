# 1. Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)?

#Diketahui:
mu <- 5
lambda <- 1/mu

#Eksponensial dengan lambda = 0.2 
pexp(5, rate = lambda, lower.tail = FALSE)

# Plot Grafik PDF Distribusi Eksponensial
x_dexp <- seq(0, 25, by=1)
y_dexp <- dexp(x_dexp, rate = lambda)

plot(x_dexp, y_dexp, type = "l", col = "deeppink", lwd = 2,
     main = "PDF Distribusi Eksponensial (λ = 0.2)",
     xlab = "Waktu Tunggu (menit)", ylab = "f(x)")

#2. Kereta komuter tiba di stasiun secara acak antara pukul 07.00 hingga 07.20 (interval 20 menit). 
#   Berapakah ragam (varians) waktu tunggu penumpang?

# Uniform dengan interval [0, 20]
# Diketahui:
a <- 0
b <- 20  

# Varians Teoritis (Jawaban Soal Sebenarnya)
varians <- ((b - a)^2) / 12
varians

# Simulasi Sampel
set.seed(123)
n <- 100
x <- runif(n, min = a, max = b)

# Plot: histogram sampel + overlay PDF teoritis
hist(x, breaks = 15, probability = TRUE,
     main = "Histogram Sampel U(0, 20) dengan PDF Teoritis",
     xlab = "Waktu Tunggu (menit)", col = "lightblue", border = "white")
curve(dunif(x, min = a, max = b), from = a, to = b, add = TRUE, col = "darkblue", lwd = 2)

# 3. Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun. 
#    Berapa peluang sensor tersebut rusak sebelum mencapai usia 5 tahun?

#Diketahui:
mu <- 10
lambda <- 1/mu

#Eksponensial dengan lambda = 0.1  
pexp(5, rate = lambda, lower.tail = TRUE)  

# Plot Grafik PDF
x_dexp <- seq(0, 30, by=1)
y_dexp <- dexp(x_dexp, rate = lambda)

plot(x_dexp, y_dexp, type = "l", col = "deeppink", lwd = 2,
     main = "PDF Distribusi Eksponensial (λ = 0.1)",
     xlab = "Masa Pakai (tahun)", ylab = "f(x)")

# 4. Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan sigma = 5 gram. 
#    Kemasan dianggap underweight jika beratnya kurang dari 240 gram. 
#    Berapa proporsi produk yang tergolong underweight?

#Distribusi Normal
# Diketahui:
n <- 100
mu <- 250
sigma <- 5

# Peluang Teoritis Underweight P(X < 240)
pnorm(240, mean = mu, sd = sigma)

# Generate sampel
set.seed(123) 
x <- rnorm(n, mean = mu, sd = sigma)

# Plot: histogram + overlay PDF teoritis
hist(x, breaks = 15, probability = TRUE,
     main = "Histogram sampel N(250, 5^2) dengan PDF teoritis",
     xlab = "Berat Kopi (gram)")

curve(dnorm(x, mean = mu, sd = sigma), from = mu - 4*sigma, to = mu + 4*sigma, add = TRUE, lwd = 2)
abline(v = mean(x), col = "blue", lwd = 2)     # Mean sampel
abline(v = mu, col = "red", lwd = 2, lty = 2)   # Mean sebenarnya

legend("topright", legend = c("PDF teoritis", "mean sampel", "mean true"),
       lty = c(1, 1, 2), col = c("black", "blue", "red"), bty = "n")
