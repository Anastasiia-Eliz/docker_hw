FROM python:3.10

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY project project
COPY create_tables.py .
COPY load_fixtures.py .
COPY entrypoint.sh .
ENV FLASK_APP=app.py
ENV FLASK_ENV = development

CMD ["sh", "entrypoint.sh"]

