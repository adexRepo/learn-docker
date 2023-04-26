# --------------------------- Membuat container dengan limit CPU dan memory --------------------------- #
# format docker container create --name namacontainer --memory ukuranMemory --cpus jumlahcore image:tag
# contoh :
    docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest
# result : CONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O   PIDS
# result : 26fef4f521b2   smallnginx    0.00%     6.758MiB / 100MiB     6.76%     586B / 0B         0B / 0B     9   
# result : fcdd0a7b1bb9   contohmongo   1.54%     186.5MiB / 9.243GiB   1.97%     13.2kB / 4.27kB   0B / 0B     33  
# result : 92185fa18789   contohnginx   0.00%     6.668MiB / 9.243GiB   0.07%     1.08kB / 0B       0B / 0B     9   
# result : 553ad8ea112b   contohRedis   0.31%     7.766MiB / 9.243GiB   0.08%     1.08kB / 0B       0B / 0B     5

# smallnginx limit nya 100MiB
# dan sisa nya 9.243GiB ini karena tadi saya ga set docker nya jadi dia ambil full semuanya memory yang dipakai