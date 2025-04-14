FROM n8nio/n8n

# Указываем порт
ENV N8N_PORT=5678

# Включаем базовую авторизацию
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Указываем публичный адрес, который выдаёт Render
ENV N8N_WEBHOOK_URL=https://n8n-real-estate-assistant.onrender.com

# Запускаем n8n
CMD ["n8n"]
