FROM python:stretch

COPY . /opt/app
WORKDIR /opt/app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
