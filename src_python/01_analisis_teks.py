#Langkah 1: menginput teks
teks = input ("Memasukkan teks: Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif.")

#Langkah 2: Memecah teks berdasarkan spasi dan menghitung jumlahnya
daftar_kata = teks.split()
jumlah_kata = len (daftar_kata)

#Langkah 3: Memecah teks berdasarkan tanda titik dan menghitung jumlahnya dengan dikurangi 1
daftar_kalimat = teks.split(.)
jumlah_kalimat = len(daftar_kalimat) - 1

#Langkah 4: Menampilkan hasil hitungan ke layar
print(f"Teks tersebut memuat {jumlah_kalimat} kalimat dan {jumlah_kata}kata.")