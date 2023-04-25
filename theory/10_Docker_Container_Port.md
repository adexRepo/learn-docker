## Container Port
Saat menjalankan container, container tersebut terisolasi di dalam docker
Artinya sistem Host (misalkan Laptop kita), tidak bisa mengakses aplikasi yang ada didalam container secara langsung, salah satu caranya adalah harus menggunakan Container Exec untuk masuk ke dalam container nya.
Biasanya sebuah aplikasi berjalan pada port tertentu, misal saat kita menjalankan aplikasi Redis, dia berjalan pada port 6379, kita bisa melihat port apa yang digunakan ketika melihat semua daftar container. 
- redis = 6379/tcp = port yang ada di container bukan di localhost

# Port Forwading
Docker memiliki kemampuan untuk melakukan port forwading, yaitu meneruskan sebuah port yang terdapat di sistem Host nya ke dalam Docker Containernya.
Cara ini cocok jika kita ingin mengekspos port yang terdapat di container ke luar melalui sistem Host nya.

# Cara Melakukan Port Forwading
Untuk melakukan port forwading, kita bisa menggunakan perintah berikut ketika membuat containernya
docker container create --name namacontainer --publish posthost:portcontainer image:tag
Jika kita ingin melakukan port forwading lebih dari satu, kita bisa tambahkan dua kali parameter --publish
- [--publish] = juga bisa disingkat [-p]