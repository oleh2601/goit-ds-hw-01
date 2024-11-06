FROM python:3.12.7

ENV APP_HOME=/GOIT-DS-HW-01
WORKDIR ${APP_HOME}

COPY . .

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

RUN poetry install

CMD ["python", "main.py"]
