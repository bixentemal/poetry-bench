FROM python:3.12.9

WORKDIR /tmp

RUN apt update \
	&& apt install -y slapd ldap-utils \
	&& apt-get install -y libldap2-dev libsasl2-dev libssl-dev

ENV POETRY_CACHE_DIR=/tmp/poetry_cache

RUN pip install poetry==1.8.3

COPY poetry.lock /tmp
COPY pyproject.toml /tmp
COPY poetry.lock /tmp

RUN poetry install
