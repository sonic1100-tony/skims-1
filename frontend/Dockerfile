FROM node:14-slim

WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . /app

EXPOSE 80

RUN npm install http-server -g

RUN yarn install --no-optional && yarn run build --mode dev

CMD http-server ./dist
