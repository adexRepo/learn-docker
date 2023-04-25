## Docker Container
Jika Docker Image seperti installer aplikasi, maka Docker Container mirip seperti aplikasi hasil installernya.
Satu Docker [Image] bisa [digunakan] untuk membuat [beberapa] Docker [Container], [asalkan] [nama] Docker [Container] nya [berbeda].
Jika kita sudah membuat Docker Container, maka [Docker] [Image] yang sedang [digunakan] oleh suatu Container [tidak] [bisa] [dihapus],
hal ini dikarenakan Docker Container tidak mengcopy isi Docker Image, tapi hanya menggunakan isinya.

# Status Container
Saat kita membuat [Container], secara [default] container tersebut [tidak] akan [berjalan].
Mirip seperti ketika kita menginstall aplikasi, jika tidak kita jalankan, maka aplikasi tersebut tidak akan berjalan, begitu juga container.
Oleh karena itu, setelah membuat container, kita [perlu] [menjalankannya] [jika] memang [ingin] [menjalankan] [container] nya.

# Membuat Container
docker container create --name namaContainer namaImage:tag
- [--name] = setName
- namaContainer = nama container kita [bebas sesuai kebutuhan]

# Melihat Container
Untuk melihat semua container, baik yang sedang berjalan atau tidak Docker Daemon, kita bisa gunakan perintah :
docker container ls -a
- [-a] = all / semua
Sedangkan jika ingin melihat container yang sedang berjalan saja, kita bisa gunakan perintah:
docker container ls

# Column in container list
CONTAINER ID = id saat mengcreate cuman di potong aja / truncate
IMAGE = nama image : versi image
COMMAND = perintah bawaan si docker nya
CREATED = waktu container di buat
STATUS = kondisi si container (Created - Up - Stop)
PORT = port di docker nya, jika di publish akan ada port publish host nya juga
NAMES = nama container nya, harus unik, jika tidak maka error conflict

# Menjalankan Container
docker container start containerId/namaContainer
- containerId = ada di column CONTAINER ID
- namaContainer = ada di column NAMES

# Menghentikan Container
docker container stop containerId/namaContainer

# Menghapus Container
docker container rm containerId/namaContainer



lihat ringkasnya di : commands\docker-container.sh
