## Docker Bind Mounts
Bind Mounts merupakan kemampuan melakukan mounting (shareing) file atau folder yang terdapat di sistem host ke container yang terdapat di docker. misalkan seperti logs nya.

Fitur ini sangat berguna ketika misal kita ingin mengirim konfigurasi dari luar container, atau misal menyimpan backup data yang dibuat di suatu aplikasi di dalam container ke dalam folder di sistem host.

Jika file atau folder tidak ada di sistem host, secara otomatis akan dibuatkan oleh Docker.

Untuk melakuakan Mounting, kita bisa menggunakan parameter [--mount] ketika membuat container
Isi dari parameter --mount memiliki aturan sendiri

# Aturan isi parameter mount
type = type mount ada 2 yaitu bind(di suatu folder tertentu), dan volume(di memory docker).
source = Lokasi file atau folder di sistem host yang mau di share kedalam container.
destination = Lokasi file atau folder di container nya.
readonly = Jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis / diubah.

* source dan destination ini seperti lokasi link,
misalkan source [C:\development\on_develop\learn-docker] (ada di host) akan di link dengan [/data/db] (ada di container)
ketika data masuk kedalam [/data/db] maka sebenarnya akan masuk / ke bind otomatis ke dalam [C:\development\on_develop\learn-docker]

# Cara melakukan mounting
Untuk melakukan mounting, kita bisa menggunakan perintah :
docker container create --name namacontainer --mount "type=bind,source=pathfolder,destination=pathfolder,readonly" image:tag