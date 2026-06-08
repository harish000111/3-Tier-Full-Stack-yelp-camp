FROM  node:alpine3.23

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN addgroup -g 1002 appgroup && adduser -D -u 1002 -G appgroup appuser

USER appuser

CMD ["npm","start"]
