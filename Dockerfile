FROM: python:36

WORKDIR /app

COPY setup.py /app/setup.py
COPY tox.ini /app/tox.ini
COPY src /app/src
COPY test /app/test

RUN pip install tox

CMD ["tox" "."]