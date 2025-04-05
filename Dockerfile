# базовий образ контейнера
FROM python:3.12

# Встановимо змінну середовища
ENV APP_HOME /app

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP_HOME

# Copy all files from your project into the container
COPY . /app

# Встановимо залежності всередині контейнера
# RUN pip install -r requirements.txt я ніби ніяких бібіотек ту не використовую тому хз чи треба тут це 

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["python", "bot_env.py"]



