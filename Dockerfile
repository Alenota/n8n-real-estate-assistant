# Базовый образ n8n
FROM n8nio/n8n:latest

# Установка Python и pip (для обработки CSV, если нужно)
USER root
RUN apk add --no-cache python3 py3-pip

# Копируем базу знаний и скрипты внутрь контейнера
COPY ./data /data
COPY ./bots /bots

# Возвращаемся к пользователю n8n
USER node
