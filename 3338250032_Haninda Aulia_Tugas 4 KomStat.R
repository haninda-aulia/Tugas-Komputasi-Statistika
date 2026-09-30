# 1. Jika rata-rata pelanggan datang ke toko adalah 3 orang per jam, 
#    modelkan dengan Poisson dan hitung P(X≥5)

lambda <- 3
n <- 100
x <- 0:10

#PMF
pmf <- dpois(x, lambda)

#Plot PMF
plot(x, pmf, type='h', lwd=3, main='Poisson(lambda=3)', xlab='k', ylab='P(X=k)')

# 2. Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian. 
#    Modelkan jumlah bola merah yang diambil dengan distribusi yang tepat.

N <- 100
K <- 20
n <- 10

#Domain k 
k <- seq(from = max(0, n + K - N), to = min(n, K))

#PMF
pmf <- dhyper(x = k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

#Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=", N, ", K=", K, ", n=", n, ")"),
     xlab = "k (banyak sukses dalam sampel)", ylab = "P(X=k)")

# 3. Simulasikan 1.000 percobaan Binomial (n=15,p=0.4)
#    dan bandingkan histogram hasil simulasi dengan PMF teoretis.

p <- 0.4
n <- 15
x <- 0:n

#PMF teoretis
pmf_teoretis <- dbinom(x, size = n, prob = p)

#Simulasi 1000 kali
set.seed(123)
simulasi <- rbinom(1000, size = n, prob = p)  

#Histogram hasil simulasi 
hist(simulasi, 
     breaks = seq(-0.5, n + 0.5, by = 1), 
     prob = TRUE, 
     col = "light grey", 
     main = "Simulasi Binomial (n=15, p=0.4) vs PMF Teoretis",
     xlab = "Jumlah Sukses (k)", 
     ylab = "Peluang / Proporsi")

lines(x, pmf_teoretis, col = "red", pch = 19, lwd = 2)
