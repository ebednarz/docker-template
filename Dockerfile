FROM node:10-alpine AS update
RUN npm install --global --loglevel error npm@6
