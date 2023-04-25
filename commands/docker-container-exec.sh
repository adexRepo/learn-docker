# --------------------- Masuk dan mengeksekusi container --------------------- #
# Format : docker container exec -i -t containerId/containerName /bin/bash
# contoh : 
    docker container exec -i -t contohRedis /bin/bash
# contoh : akan masuk di => root@553ad8ea112b:/data#  (ini artinya /bin/bash sudah berjalan yang ada di container dan ada di dir /data)
# contoh : masuk ke root => cd /
# contoh : lihat isi rootnya => bin  boot  data  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
# contoh : lalu saya ingin akses cli nya => redis-cli
# contoh : maka akan masuk ke cli nya => 127.0.0.1:6379>
# contoh : bisa mulai eksekusi sesuai kebutuhan di aplikasi redis nya.
# contoh : kalo mau keluar ketik => exit

# note : container nya harus up dulu status nya!
