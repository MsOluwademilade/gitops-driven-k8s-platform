cd users-api
docker build -t users-api:latest .

cd ../todos-api
docker build -t todos-api:latest .

cd ../frontend
docker build -t frontend:latest .

cd ../log-message-processor
docker build -t log-message-processor:latest .
