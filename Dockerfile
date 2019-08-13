FROM python:3.7-slim-stretch
COPY . /
RUN apt update && apt install -y build-essential libssl-dev libffi-dev python3-dev freetds-dev && rm -rf /var/lib/apt/lists/*
RUN pip3 install -r /requirements.txt
WORKDIR /
ENTRYPOINT [ "python", "./main.py" ]
