FROM python:3.12-slim-bullseye

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p logs qr_codes && chmod 777 logs qr_codes

COPY . .

ENTRYPOINT ["python", "main.py"]
CMD ["--url", "https://github.com/if0390"]
