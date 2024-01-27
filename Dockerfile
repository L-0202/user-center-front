FROM nginx

WORKDIR /user/share/nginx/html
USER root

COPY ./docker/nginc.conf /etc/nginx/conf.d/default.conf

COPY ./dist /user/share/nginx/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
