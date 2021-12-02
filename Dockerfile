#Устанавливаем базовый образ
FROM python:3.10

# Устанавливаем рабочую директорию
WORKDIR /python

#Копируем зависимости
COPY requirements.txt .

# Обновление pip
RUN pip install --upgrade pip

#Установка зависимостей
RUN pip install -r requirements.txt

#Копируем приложение
COPY app.py .

#Запускаем приложение
CMD ["python", "/python/app.py", "runserver", "0.0.0.0:8080"]