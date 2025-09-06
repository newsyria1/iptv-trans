FROM ubuntu:20.04

RUN apt update && apt install -y ffmpeg curl

WORKDIR /app

COPY convert.sh .

RUN mkdir -p /app/output

CMD ["bash", "convert.sh"]
