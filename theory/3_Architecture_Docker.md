## Docker Architecture
Docker menggunakan arsitektur Client-Server
Docker client berkomunikasi dengan Docker daemon (server)
Saat kita menginstall Docker, biasanya didalamnya sudah terdapat Docker Client dan Docker Daemon [karena memang 1 paket]
Docker Client dan Docker Daemon bisa berjalan di suatu sistem yang sama
Docker Client dan Docker Daemon berkomunikasi menggunakan REST API

kita menulis perintah docker melalui docker client dan docker client akan mengirim ke docker daemon, but docker daemon / server wajib running dulu, jika tidak maka client dapat error karena docker daemon masih belum running.

yang mengeksekusi perintah adalah docker daemon bukan docker client, docker client hanya mengirim perintah.

*lihat* :  images\Diagram Docker Architecture.png