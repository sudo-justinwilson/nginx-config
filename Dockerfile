FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 443

#CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
CMD /bin/bash -c "sed -i "s/PROXY_TARGET/${PROXY_TARGET}/g" /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
