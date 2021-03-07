FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt