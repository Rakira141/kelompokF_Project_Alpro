# Fungsi untuk mendapatkan nama bulan
get_nama_bulan <- function(bulan) {
  if (bulan == 1) {
    return("Januari")
  } else if (bulan == 2) {
    return("Februari")
  } else if (bulan == 3) {
    return("Maret")
  } else if (bulan == 4) {
    return("April")
  } else if (bulan == 5) {
    return("Mei")
  } else if (bulan == 6) {
    return("Juni")
  } else if (bulan == 7) {
    return("Juli")
  } else if (bulan == 8) {
    return("Agustus")
  } else if (bulan == 9) {
    return("September")
  } else if (bulan == 10) {
    return("Oktober")
  } else if (bulan == 11) {
    return("November")
  } else if (bulan == 12) {
    return("Desember")
  } else {
    return("Tidak Valid")
  }
}

# Fungsi validasi NIP
validasi_nip <- function(nip) {
  if (nchar(nip) != 18) {
    return(FALSE)
  }
  
  if (!grepl("^[0-9]+$", nip)) {
    return(FALSE)
  }
  
  return(TRUE)
}

# Fungsi ekstraksi tanggal lahir
ekstrak_tanggal_lahir <- function(nip) {
  tahun <- substr(nip, 1, 4)
  bulan <- as.integer(substr(nip, 5, 6))
  tanggal <- as.integer(substr(nip, 7, 8))
  
  return(list(
    tahun = tahun,
    bulan = bulan,
    tanggal = tanggal
  ))
}

# Fungsi utama
tampilkan_tanggal_lahir <- function(nip) {
  
  cat("\n", paste(rep("=", 45), collapse = ""), "\n", sep = "")
  cat("  NIP   :", nip, "\n")
  
  # Validasi
  if (!validasi_nip(nip)) {
    panjang <- nchar(nip)
    cat("  Status: TIDAK VALID (panjang =", panjang,
        ", harus 18 digit angka)\n")
    cat(paste(rep("=", 45), collapse = ""), "\n\n")
    return()
  }
  
  # Ekstraksi
  data_lahir <- ekstrak_tanggal_lahir(nip)
  
  tahun <- data_lahir$tahun
  bulan <- data_lahir$bulan
  tanggal <- data_lahir$tanggal
  
  # Nama bulan
  nama_bulan <- get_nama_bulan(bulan)
  
  # Validasi tanggal dan bulan
  if (nama_bulan == "Tidak Valid" ||
      tanggal < 1 || tanggal > 31) {
    
    cat("  Status: TIDAK VALID (tanggal atau bulan di luar rentang)\n")
    cat(paste(rep("=", 45), collapse = ""), "\n\n")
    return()
  }
  
  # Output
  cat("  Tanggal Lahir:", tanggal,
      nama_bulan, tahun, "\n")
  
  cat(paste(rep("=", 45), collapse = ""), "\n\n")
}

# -- Program Utama -------------------------------------------
nip <- readline(prompt = "Masukkan NIP ASN: ")
nip <- trimws(nip)

tampilkan_tanggal_lahir(nip)
