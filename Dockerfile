FROM python:3.11-slim
# FROM python:3.9.12

WORKDIR /app

ENV PYTHONUNBUFFERED 1

COPY requirements.txt /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . /app

CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]