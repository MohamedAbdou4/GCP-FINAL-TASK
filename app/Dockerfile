
FROM python:3.7-alpine3.15

WORKDIR /app


RUN pip install redis
RUN pip install tornado


COPY . .

ENV ENVIRONMENT=DEV
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=redis
ENV REDIS_PORT=6379
ENV REDIS_DB=0


CMD [ "python3", "hello.py" ]
