FROM python:3.12-slim-bullseye


ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /code


RUN pip install --upgrade pip

COPY ./requirements.txt .
COPY ./requirements-dev.txt .
RUN pip install -r requirements-dev.txt


COPY . .

#RUN python manage.py collectstatic --no-input
