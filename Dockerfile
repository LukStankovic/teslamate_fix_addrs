FROM python:3.11-slim

WORKDIR /root/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY teslamate_fix_addrs.py .

ENTRYPOINT ["python3", "/root/app/teslamate_fix_addrs.py"]
