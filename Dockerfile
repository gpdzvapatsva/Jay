FROM python:latest

ENV PYTHONBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

CMD python manage.py runserver 0.0.0.0:8000