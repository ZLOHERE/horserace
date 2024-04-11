FROM ubuntu

COPY . /home/Desktop/horserace-main
WORKDIR /home/Desktop/horserace-main

RUN apt-get update && apt-get install -y python3 && apt install -y python3-psycopg2

ENTRYPOINT ["bash"]
