FROM python:3.10

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY project project
ENV FLASK_APP=app.py
ENV FLASK_ENV = development

CMD ["sh", "./entrypoint.sh"]

