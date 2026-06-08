# Langkah 1: Meminta input teks dari pengguna
cat("Masukkan teks: ")
teks <- readline(prompt = "")

# Langkah 2: Memecah teks berdasarkan spasi dan menghitung jumlahnya
daftar_kata = unlist(strsplit(teks,"\\s+"))
jumlah_kata <- length(daftar_kata)

# Langkah 3: Memecah teks berdasarkan tanda titik dan dikurangi 1
daftar_kalimat = unlist(strsplit(teks,"\\."))
jumlah_kalimat <- length(daftar_kalimat) - 1

# Langkah 4: Menampilkan hasil hitungan ke layar
cat(sprintf("Teks tersebut memuat %d kalimat dan %d kata.\n",jumlah_kalimat,jumlah_kata))