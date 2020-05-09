FROM python:3.7-alpine3.11

RUN apk add python3-dev gcc build-base

WORKDIR /app

COPY . .

RUN pip install -r requirement.txt

EXPOSE 8001

ENTRYPOINT [ "python", "server.py" ]
