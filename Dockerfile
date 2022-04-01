# reutilizamos el cache entre las capas
FROM node:12

COPY ["package.json","package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install
# mientras no realizamos cambios en package json este codigo

COPY [".", "/usr/src"]

EXPOSE 3000

CMD ["node", "index.js"]
