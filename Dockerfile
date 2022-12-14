FROM python:3.10

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY project project
COPY create_tables.py .
COPY load_fixtures.py .
COPY fixtures.json .
COPY entrypoint.sh .
ENV FLASK_APP=app.py
ENV FLASK_ENV = development

CMD flask run -h 0.0.0.0 -p 25000

