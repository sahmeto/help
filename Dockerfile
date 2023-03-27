FROM hub.hamdocker.ir/node:16 AS base

WORKDIR /app


COPY package.json ./
COPY . ./
RUN npm install
RUN npm run build

CMD npm run serve
