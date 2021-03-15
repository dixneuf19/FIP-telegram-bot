FROM python:3.8

RUN pip install -U pip

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY fip_telegram_bot fip_telegram_bot

ENV PYTHONPATH=.

CMD ["python", "fip_telegram_bot/main.py"]
