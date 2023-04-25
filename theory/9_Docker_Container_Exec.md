## Docker Container Exec
Saat kita membuat container, [aplikasi] yang [terdapat] di [dalam] [container] [hanya] [bisa] [diakses] [dari] [dalam] [container].
Oleh karena itu, kadang kita perlu masuk kedalam container nya itu sendiri.
[Untuk] [masuk] [ke] [dalam] [container], kita bisa [menggunakan] fitur [Container] [Exec], dimana digunakan untuk [mengeksekusi] [kode] [program] yang terdapat di dalam container.

simpel nya fitur exec itu digunakan untuk masuk dan mengeksekusi kode program.

# Masuk ke Container
Untuk masuk kedalam container, kita bisa mencoba mengeksekusi program bash script yang terdapat di dalam container dengan bantuan Container Exec :
docker container exec -i -t containerId/namaContainer /bin/bash
- [-i] adalah argument interaktif, menjaga agar input tetap aktif (tiap yang dikirim akan dikirim)
- [-t] adalah argument untuk alokasi pseudo-TTY (terminal akses nya / agar bisa di akses intinya gitu!)
- [/bin/bash] adalah contoh code program yang terdapat di dalam container


lihat ringkasnya : commands\docker-container-exec.sh