FROM nginx:1.31.1-alpine

COPY frontend/ /usr/share/nginx/html/
COPY frontend-config/default.conf /etc/nginx/conf.d/default.conf
COPY --chmod=755 docker-entrypoint.d/40-generate-config.sh /docker-entrypoint.d/40-generate-config.sh

EXPOSE 80
