# Titik pusat cluster
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

# Titik yang akan diklasifikasikan
U <- c(1, 2, 3)

# Fungsi menghitung jarak
jarak <- function(p, q) {
  sqrt(sum((p - q)^2))
}

# Hitung jarak
dA <- jarak(U, A)
dB <- jarak(U, B)
dC <- jarak(U, C)

# Tentukan cluster
if (dA <= dB && dA <= dC) {
  cluster <- "A"
} else if (dB <= dA && dB <= dC) {
  cluster <- "B"
} else {
  cluster <- "C"
}

cat("Titik U =", U, "\n")
cat("Jarak ke Cluster A =", round(dA, 3), "\n")
cat("Jarak ke Cluster B =", round(dB, 3), "\n")
cat("Jarak ke Cluster C =", round(dC, 3), "\n")
cat("Titik U masuk ke Cluster", cluster, "\n")
