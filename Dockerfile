FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENV MONGO_USERNAME=admin
ENV MONGO_PASSWORD=admin
ENV MONGO_HOST=mongo
ENV MONGO_PORT=27017
ENV MONGO_DB=flask_db

EXPOSE 5000

CMD ["python", "app.py"]
