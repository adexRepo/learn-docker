## Docker Container Resource Limit
Saat membuat container, secara default dia akan menggunakan semua CPU dan Memory yang diberikan ke Docker (MAC dan Windows), kita bisa mensetting diawal docker ini (bukan container) akan menggunakan berapa core dan berapa memorynya yang tersedia di sistem HOST(Linux).

Problemnya jika terjadi kesalahan, misal container terlalu banyak memakan CPU dan Memory, maka bisa berdampak terhadap performa container lain, atau bahkan ke sistem host.

Oleh karena itu, ada baiknya ketika kita membuat container , kita memberikan resource limit terhadap container nya.

# Memory
Saat membuat container, kita bisa menentukan jumlah memory, yang bisa digunakan oleh container ini, dengan menggunakan perintah [--memory] diikuti dengan angka memory yang diperbolehkan untuk digunakan.
Kita bisa menambahkan ukuran dalam bentuk b (bytes), k (kilo bytes), m (mega bytes) atau g (giga bytes), misal kita tulis 100m berarti 100 mega bytes.

# CPU
Selain mengatur memory, kita bisa menentukan berapa jumlah CPU yang bisa digunakan oleh container dengan parameter [--cpus]
Jika kita set dengan 1.5 artinya container bisa menggunakan satu dan setengah CPU yang dimiliki oleh si docker (bukan HOST).

HOST punya 8 core lalu docker dikasih 2 core, lalu ada container yang di set CPU nya 0.7 core, maka 0.7 core ini dari si 2 core bukan dari si 8 core.