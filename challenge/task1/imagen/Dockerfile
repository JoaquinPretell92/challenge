FROM python:3.8.0-buster

COPY requirements.txt /
RUN pip install --trusted-host pypi.python.org -r /requirements.txt

ADD . /app

WORKDIR /app

CMD ["python","mypythonapp.py"]