# ----------------------------- Membuat container ---------------------------- #
# Format : docker container create --name namaContainer namaImage:tag
# Contoh :
    docker container create --name contohRedis redis:latest

# ------------- Melihat container yang sedang berjalan dan tidak ------------- #
docker container ls -a

# ---------------- Melihat container yang sedang berjalan saja --------------- #
docker container ls

# --------------------------- Menjalankan container -------------------------- #
# Format : docker container start containerId/containerName
# Contoh : 
    docker container start contohRedis
# result :  87f68da55842   redis:latest   "docker-entrypoint.s…"   19 minutes ago   Up 6 seconds   6379/tcp   contohRedis
# note PORTS 6379 itu bukan port si host, tapi port yang ada di container docker nya

# misal create container baru namanya contohRedis2
# result : ee9f3580acc4   redis:latest   "docker-entrypoint.s…"   13 seconds ago   Up 8 seconds   6379/tcp   contohRedis2
# selama nama container nya beda gaada masalah jika port nya sama, soalnya tiap container ter isolasi satu sama lain

# -------------------------- Menghentikan container -------------------------- #
# Format : docker container stop containerId/namaContainer
# contoh : 
    docker container stop contohRedis2
# result : CONTAINER ID   IMAGE          COMMAND                  CREATED              STATUS                      PORTS     NAMES
# result : ee9f3580acc4   redis:latest   "docker-entrypoint.s…"   About a minute ago   Exited (0) 6 seconds ago              contohRedis2
# result : 87f68da55842   redis:latest   "docker-entrypoint.s…"   23 minutes ago       Up 4 minutes               6379/tcp   contohRedis

# ---------------------------- Menghapus container --------------------------- #
# Format : docker container rm containerId/namaContainer
# Contoh : 
    docker container rm contohRedis2
# Contoh : 
    docker container rm contohRedis
# note : saat menghapus container pastikan container statusnya adalah excited bukan up!
