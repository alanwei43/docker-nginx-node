FROM nginx

USER root

COPY install-node.sh  ./

RUN  ./install-node.sh \
    && apt-get install -y git \
    && apt-get install -y nodejs yarn \
    && npm install -g pm2 \
    && apt-get remove --purge --auto-remove -y 

CMD ["nginx", "-g", "daemon off;"]