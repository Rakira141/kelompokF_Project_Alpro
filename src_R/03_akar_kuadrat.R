cat("PROGRAM AKAR PERSAMAAN KUADRAT\n")

# Koefisien langsung diisi
a <- 1
b <- -5
c <- 6

if (a == 0) {
  
  cat("Error: Nilai a tidak boleh 0 karena bukan persamaan kuadrat.\n")
  
} else {
  
  diskriminan <- b^2 - 4*a*c
  
  if (diskriminan < 0) {
    
    cat("Persamaan hanya memiliki akar-akar imajiner.\n")
    
  } else {
    
    x1 <- (-b + sqrt(diskriminan)) / (2*a)
    x2 <- (-b - sqrt(diskriminan)) / (2*a)
    
    cat(sprintf("Akar pertama (x1) = %.3f\n", x1))
    cat(sprintf("Akar kedua (x2) = %.3f\n", x2))
  }
}
