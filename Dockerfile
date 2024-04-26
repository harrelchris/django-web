FROM python:3.12.3-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN python -m pip install pip setuptools wheel --upgrade

COPY requirements/ ./requirements/

RUN pip install --no-cache-dir -r requirements/prod.txt

COPY . .

CMD [ "gunicorn" ]
