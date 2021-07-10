POSTGRES_CONTAINER_NAME='pgdb'
DATABASE='wongames'
USERNAME='wongames'
#import schema

# docker exec -i ${POSTGRES_CONTAINER_NAME} psql -h 127.0.0.1 -U ${USERNAME} -d ${DATABASE} -W < strapi.sql

#export schema

docker exec -i ${POSTGRES_CONTAINER_NAME} pg_dump -c --if-exists --exclude-table=strapi_administrator -h 127.0.0.1 -U ${USERNAME} -d ${DATABASE} -W > backup.sql
