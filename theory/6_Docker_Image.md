## Docker Image
Docker Image mirip seperti installer aplikasi, diaman didalam Docker Image terdapat aplikasi dan dependency.
Sebelum kita bisa menajlankan aplikasi di Docker, kita perlu memastikan memiliki Docker Image aplikasi tersebut.

Melihat Docker Image : docker image ls

# Download Docker Image
Untuk mendownload Docker Image dari Docker Registry, kita bisa gunakan perintah :
docker image pull namaImage:tag
- pull = download
- namaImage = nama aplikasi / dependency yang ingin didownload
- tag = version
jika tidak pakai tag maka by default ambil yang latest

Kita bisa mendapatkan Docker image yang diinginkan dari : Docker Hub : https://hub.docker.com/ 

# Menghapus Docker Image
Jika kita tidak ingin menggunakan Docker Image yang sudah kita download, kita bisa gunakan printah :
docker image rm namaImage:tag
- rm = remove


lihat ringkasnya di : commands\docker-image.sh