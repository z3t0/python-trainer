FROM python:3.6

WORKDIR /app

COPY setup.py /app/setup.py
COPY tox.ini /app/tox.ini
COPY src /app/src
COPY test /app/test
COPY README.md /app/README.md

RUN pip install tox

CMD python -m tox /app