FROM python:3.8-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libc-dev \
    libssl-dev \
    libffi-dev \
    build-essential \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install thriftpy2==0.4.14 && \
    pip install wheel && \
    pip install redis py_zipkin requests six && \
    pip install --no-cache-dir -r requirements.txt \
    pip uninstall -y thriftpy || true

COPY . .

ENV REDIS_HOST=redis \
    REDIS_PORT=6379 \
    REDIS_CHANNEL=log_channel

CMD ["python", "main.py"]
