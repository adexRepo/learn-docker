# --------------------------- Menambah Environtment -------------------------- #
# format : docker container create --name namacontainer --env KEY="value" --env KEY2="value2" image:tag
# contoh :
    docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME="adek" --env MONGO_INITDB_ROOT_PASSWORD="rahasia" mongo:latest
# CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                      NAMES
# fcdd0a7b1bb9   mongo:latest   "docker-entrypoint.s…"   4 minutes ago   Up 7 seconds   0.0.0.0:27017->27017/tcp   contohmongo
# 27017/tcp     = in container contohmongo 
# 0.0.0.0:27017 = in host / this laptop