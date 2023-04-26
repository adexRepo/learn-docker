# --------------------------- Menambah Environtment -------------------------- #
# format : docker container create --name namacontainer --env KEY="value" --env KEY2="value2" image:tag
# contoh :
    docker container create --name contohmongo --env MONGO_INITDB_ROOT_USERNAME="adek" --env MONGO_INITDB_ROOT_PASSWORD="rahasia" mongo:latest