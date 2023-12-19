# this is for reflex engine as a server
FROM ubuntu:latest

WORKDIR /app

COPY webui /app/

# Transaction #3, #4 & #5
RUN apt-get update  -y && \
    apt-get install python3 python3-dev python3-venv nodejs gcc python3-pip -y && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 3000 8000

CMD [ "reflex init && reflex run --env prod" ]