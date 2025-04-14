# Базовый образ n8n
FROM n8nio/n8n:latest

# Установка Python и pip (если потребуется)
USER root
RUN apt-get update && apt-get install -y python3 python3-pip

# Копируем базу знаний и скрипты внутрь контейнера
COPY ./data /data
COPY ./bots /bots

# Устанавливаем зависимости, если есть requirements.txt
# COPY requirements.txt /bots/requirements.txt
# RUN pip3 install -r /bots/requirements.txt

# Возвращаемся к пользователю n8n
USER node
