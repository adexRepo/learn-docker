## Docker Container Environtment Variable
Saat membuat aplikasi, menggunakan Environment Variable adalah salah satu teknik agar konfigurasi aplikasi bisa diubah secara dinamis.

Dengan menggunakan environment variable, kita bisa mengubah-ubah konfigurasi aplikasi, tanpa harus mengubah kode aplikasinya lagi.

Docker Container memiliki parameter yang bisa kita gunakan untuk mengirim environment variable ke aplikasi yang terdapat di dalam container

# Menambah Environtment Variable
Untuk menambah environtment variable, kita bisa menggunakan perintah --env atau bisa disingkat -e, :
docker container create --name namacontainer --env KEY="value" --env KEY2="value2" image:tag