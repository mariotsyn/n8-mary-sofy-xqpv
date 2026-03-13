FROM nginx:alpine
COPY dist/ /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
CMD sh -c "sed -i 's/listen       80;/listen '\$PORT';/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
