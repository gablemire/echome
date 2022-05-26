FROM node:18.2.0-alpine AS deps

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

FROM node:18.2.0-alpine AS runner

WORKDIR /app

COPY --from=deps /app .
COPY src ./src

RUN adduser --shell /bin/bash --disabled-password nodejs

USER nodejs

WORKDIR /app

EXPOSE 8583

CMD [ "npm", "start" ]
