FROM python:3.7-stretch
COPY . /webhooks/
RUN apt update && apt install -y libicu-dev libicu57 build-essential libssl-dev libffi-dev python3-dev freetds-dev && rm -rf /var/lib/apt/lists/*
RUN pip3 install -r /webhooks/requirements.txt
WORKDIR /webhooks/
ENTRYPOINT [ "python", "./main.py" ]
