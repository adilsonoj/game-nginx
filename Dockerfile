FROM nginx:stable-alpine
COPY /config/default.conf /etc/nginx/conf.d
COPY /config/nginx.conf /etc/nginx
COPY /html /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
