Get_Nama_Bulan <- function(Bulan) {
  if (Bulan == 1) {
    return("Januari")
  } else if (Bulan == 2) {
    return("Februari")
  } else if (Bulan == 3) {
    return("Maret")
  } else if (Bulan == 4) {
    return("April")
  } else if (Bulan == 5) {
    return("Mei")
  } else if (Bulan == 6) {
    return("Juni")
  } else if (Bulan == 7) {
    return("Juli")
  } else if (Bulan == 8) {
    return("Agustus")
  } else if (Bulan == 9) {
    return("September")
  } else if (Bulan == 10) {
    return("Oktober")
  } else if (Bulan == 11) {
    return("November")
  } else if (Bulan == 12) {
    return("Desember")
  } else {
    return("Tidak Valid")
  }
}

Validasi_Nip <- function(NIP) {
  if (nchar(NIP) != 18) {
    return(FALSE)
  }
  
  if (!grepl("^[0-9]+$", NIP)) {
    return(FALSE)
  }
  
  return(TRUE)
}

Ekstrak_Tanggal_Lahir <- function(NIP) {
  Tahun <- substr(NIP, 1, 4)
  Bulan <- as.integer(substr(NIP, 5, 6))
  Tanggal <- as.integer(substr(NIP, 7, 8))
  
  return(list(
    Tahun = Tahun,
    Bulan = Bulan,
    Tanggal = Tanggal
  ))
}

Tampilkan_Tanggal_Lahir <- function(nip) {
  cat("\n", paste(rep("=", 45), collapse = ""), "\n", sep = "")
  cat("  NIP   :", NIP, "\n")

  if (!Validasi_Nip(NIP)) {
    panjang <- nchar(NIP)
    cat("  Status: TIDAK VALID (panjang =", panjang,
        ", harus 18 digit angka)\n")
    cat(paste(rep("=", 45), collapse = ""), "\n\n")
    return()
  }

  Data_Lahir <- Ekstrak_Tanggal_Lahir(NIP)
  
  Tahun <- Data_Lahir$Tahun
  Bulan <- Data_Lahir$Bulan
  Tanggal <- Data_Lahir$Tanggal
  
  Nama_Bulan <- Get_Nama_Bulan(Bulan)
  if (Nama_Bulan == "Tidak Valid" ||
      Tanggal < 1 || Tanggal > 31) {
    
    cat("  Status: TIDAK VALID (tanggal atau bulan di luar rentang)\n")
    cat(paste(rep("=", 45), collapse = ""), "\n\n")
    return()
  }
  
  cat("  Tanggal Lahir:", Tanggal,
      Nama_Bulan, Tahun, "\n")
  
  cat(paste(rep("=", 45), collapse = ""), "\n\n")
}

NIP <- readline(prompt = "Masukkan NIP ASN: ")
NIP <- trimws(NIP)

tampilkan_tanggal_lahir(NIP)
