FROM python:3.14.0-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD gunicorn --bind :${PORT:-5000} run:app
