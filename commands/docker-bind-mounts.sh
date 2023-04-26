# -------------------------- Cara melakukan mounting ------------------------- #
# format : docker container create --name namacontainer --mount "type=bind,source=pathfolder,destination=pathfolder,readonly" image:tag
# contoh :
    docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=C:\development\on_develop\learn-docker\example-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME="adek" --env MONGO_INITDB_ROOT_PASSWORD="rahasia" mongo:latest

# note : destination /data/db == ini bisa tau dari image di docker hub
# saat di stop container nya datanya masih ada di C:\development\on_develop\learn-docker\example-data
# saat di remove sekalipun datanya masih ada di C:\development\on_develop\learn-docker\example-data
# saat kita buat lagi, lalu menggunakan data di C:\development\on_develop\learn-docker\example-data, masih ada dan masih bisa.
# shareing kedalam sistem host.