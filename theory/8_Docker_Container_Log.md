## Docker Container Log
Kadang saat terjadi masalah dengan aplikasi yang terdapat di container, seringkali kita ingin melihat detail dari log aplikasinya.
Hal ini dilakukan untuk melihat detail kejadian apa yang terjadi di aplikasi, sehingga akan memudahkan ketika kita mendapat masalah.

# Melihat Container Log
Untuk melihat log aplikasi di container kita, kita bisa gunakan perintah :
docker container logs containerId/namaContainer

atau jika ingin melihat log secara realtime, kita bisa gunakan perintah :
docker container logs -f containerId/namaContainer
- [-f] = untuk menunggu / blocking sampai ada log baru dan seterusnya. 

lihat ringkasnya : commands\docker-container-logs.sh
127.0.0.1:6379>