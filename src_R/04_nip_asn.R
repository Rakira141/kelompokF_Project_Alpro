Get_Nama_Bulan <- function(Bulan) {
  if (Bulan == 01) {
    return("Januari")
  } else if (Bulan == 02) {
    return("Februari")
  } else if (Bulan == 03) {
    return("Maret")
  } else if (Bulan == 04) {
    return("April")
  } else if (Bulan == 05) {
    return("Mei")
  } else if (Bulan == 06) {
    return("Juni")
  } else if (Bulan == 07) {
    return("Juli")
  } else if (Bulan == 08) {
    return("Agustus")
  } else if (Bulan == 09) {
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

Tampilkan_Tanggal_Lahir <- function(NIP) {
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
  
  Validasi_Tanggal <- function(Tanggal, Bulan, Tahun) {
    
    tanggal_valid <- tryCatch(
      as.Date(
        sprintf("%04d-%02d-%02d",
                as.integer(Tahun),
                Bulan,
                Tanggal)
      ),
      error = function(e) NA
    )
    
    return(!is.na(tanggal_valid))
  }
  
  Nama_Bulan <- Get_Nama_Bulan(Bulan)
  if (Nama_Bulan == "Tidak Valid" ||
      !Validasi_Tanggal(Tanggal, Bulan, Tahun)) {
    
    cat("  Status: TIDAK VALID (tanggal tidak sesuai kalender)\n")
    
    cat(paste(rep("=", 45), collapse = ""), "\n\n")
    return()
  }
  Tanggal <- sprintf("%02d", Tanggal)
  cat("  Tanggal Lahir:", Tanggal,
      Nama_Bulan, Tahun, "\n")
  
  cat(paste(rep("=", 45), collapse = ""), "\n\n")
}

NIP <- readline(prompt = "Masukkan NIP ASN: ")
NIP <- trimws(NIP)

Tampilkan_Tanggal_Lahir(NIP)
