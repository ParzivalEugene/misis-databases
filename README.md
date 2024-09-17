# Решения к курсу "Базы даных" МИСИС

## Поднять бд

1. Инициализировать `.env` файл

```bash
cp .env.example .env
```

2. Запустить докер

```bash
docker compose up -d
```

## Тестировать скрипты

```bash
mysql -u yourusername -p yourpassword yourdatabase < text_file
```