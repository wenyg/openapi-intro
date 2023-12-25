FROM node
RUN npm config set registry https://registry.npmmirror.com
RUN npm i docsify-cli -g
RUN npm i http-server -g
WORKDIR /book