# Langkah 1: Menginput teks dari pengguna
cat("Masukkan teks: ")
teks <- readline(prompt = "")

# Langkah 2: Memecah teks berdasarkan spasi dan menghitung totalnya
daftar_kata = unlist(strsplit(teks,"\\s+"))
total_kata <- length(daftar_kata)

# Langkah 3: Memecah teks berdasarkan tanda titik dan menghitung totalnya
daftar_kalimat = unlist(strsplit(teks,"\\."))
total_kalimat <- length(daftar_kalimat)

# Langkah 4: Menampilkan hasil hitungan
cat(sprintf("Teks tersebut berisi %d kalimat dan %d kata.\n",total_kalimat,total_kata))
