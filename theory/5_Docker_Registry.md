## Docker Registry
Docker Registry adalah tempat kita menyimpan Docker Image.
Dengan menggunakan Docker Registry, kita bisa menyimpan Image yang kita buat dan bisa digunakan di Docker Daemon dimanapun selama bisa terkoneksi ke Docker Registry.
Simpel nya Docker Image itu seperti aplikasi-aplikasi yang kita buat atau bisa juga berupa aplikasi yang lain. 
contohnya :
    Redis, Nginx, mongodb, mysql, postgre dll.

*lihat* : images\Diagram Docker Architecture.png

kita bisa masukkan docker image ke docker registry, jika sudah ada di docker registry image yang ingin dimasukkan, maka docker akan mengupdate yang lama dan mengganti dengan yang baru.

## Contoh Docker Registry :
Docker Hub : https://hub.docker.com/ 
Digital Ocean Container Registry : https://www.digitalocean.com/products/container-registry/ 
Google Cloud Container Registry : https://cloud.google.com/container-registry 
Amazon Elastic Container Registry : https://aws.amazon.com/id/ecr/ 
Azure Container Registry : https://azure.microsoft.com/en-us/services/container-registry/ 