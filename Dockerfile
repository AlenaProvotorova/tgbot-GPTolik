FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

ENV PORT=3000

EXPOSE $PORT

# Устанавливаем переменную окружения для токена бота
# ENV BOT_TOKEN="your_bot_token_here"

# Устанавливаем переменную окружения для названия файла с точкой входа
# ENV ENTRY_FILE="index.js"

CMD ["npm", "start"]
