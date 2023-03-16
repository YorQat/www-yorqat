FROM --platform=arm64 node:19-alpine3.16
 
WORKDIR /app
COPY package.json ./

RUN npm i

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["node", "build"]

