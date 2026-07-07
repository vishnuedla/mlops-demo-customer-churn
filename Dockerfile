FROM python:3.14-slim

WORKDIR /model

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY .  .

CMD ["python","api.py"]
