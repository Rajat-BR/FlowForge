FROM python@sha256:a5ef46a93e429aa07466f536c25962f3c157c0db77f5b9691d1a04a832cd62f4

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7860

CMD ["python", "-m", "server.app"]