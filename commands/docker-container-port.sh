# -------------------------- Membuat Port forwading -------------------------- #
# Format : docker container create --name namacontainer --publish posthost:portcontainer image:tag
# Contoh :
    docker container create --name contohnginx --publish 8080:80 nginx:latest
# Result :
# CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS         PORTS                  NAMES
# 92185fa18789   nginx:latest   "/docker-entrypoint.…"   35 seconds ago   Up 3 seconds   0.0.0.0:8080->80/tcp   contohnginx
# 553ad8ea112b   redis:latest   "docker-entrypoint.s…"   2 hours ago      Up 2 hours     6379/tcp               contohRedis