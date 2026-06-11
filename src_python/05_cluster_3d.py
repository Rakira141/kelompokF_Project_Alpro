import math

# Titik pusat cluster
A = (2, 1, 3)
B = (1, -4, 6)
C = (-2, 3, -2)

# Titik yang akan diklasifikasikan
U = (1, 2, 3)

# Fungsi menghitung jarak Euclidean
def jarak(p, q):
    return math.sqrt((p[0] - q[0])**2 +
                     (p[1] - q[1])**2 +
                     (p[2] - q[2])**2)

# Hitung jarak ke masing-masing cluster
dA = jarak(U, A)
dB = jarak(U, B)
dC = jarak(U, C)

# Menentukan cluster terdekat
if dA <= dB and dA <= dC:
    cluster = "A"
elif dB <= dA and dB <= dC:
    cluster = "B"
else:
    cluster = "C"

# Output hasil
print("Titik U =", U)
print("Jarak ke Cluster A =", round(dA, 3))
print("Jarak ke Cluster B =", round(dB, 3))
print("Jarak ke Cluster C =", round(dC, 3))
print("Titik U masuk ke Cluster", cluster)
