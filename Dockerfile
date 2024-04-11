FROM ubuntu

COPY . /home/Desktop/horserace-main
WORKDIR /home/Desktop/horserace-main

ENV VIRTUAL_ENV=/opt/venv
RUN apt-get update && apt-get install -y python3 && apt install -y python3-psycopg2 && apt install -y python3.10-venv && python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install bandit && pip install pycodestyle

ENTRYPOINT ["bash"]
