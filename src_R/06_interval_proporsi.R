# Fungsi menghitung interval konfidensi
hitung_interval_konfidensi <- function(p_hat, n, alpha) {
  
  if (p_hat < 0 || p_hat > 1) {
    cat("Error: Proporsi sampel harus berada antara 0 dan 1.\n")
    return()
  }
  
  if (alpha == 0.10) {
    z <- 1.645
  } else if (alpha == 0.05) {
    z <- 1.96
  } else {
    cat("Error: Alpha harus 0.05 atau 0.10.\n")
    return()
  }
  
  galat <- z * sqrt((p_hat * (1 - p_hat)) / n)
  
  batas_bawah <- p_hat - galat
  batas_atas <- p_hat + galat
  
  cat("\nInterval Konfidensi", (1 - alpha) * 100, "%\n")
  cat("Batas bawah =", round(batas_bawah, 4), "\n")
  cat("Batas atas  =", round(batas_atas, 4), "\n")
}

# Data input
p_hat <- 0.6
n <- 100
alpha <- 0.05

# Menjalankan fungsi
hitung_interval_konfidensi(p_hat, n, alpha)
