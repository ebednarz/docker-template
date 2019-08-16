FROM node:12-alpine AS update
RUN npm install --global --loglevel error npm@6

FROM update AS layout
USER node
WORKDIR /home/node
RUN mkdir ./app
WORKDIR ./app

FROM layout AS development
COPY --chown=node:node ./root ../root
RUN ln -s ../root/package.json ./\
 && ln -s ../root/package-lock.json ./
