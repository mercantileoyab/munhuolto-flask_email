# Use official Python image
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port 3005
EXPOSE 3005

# Enable hot reload with Flask's debug mode
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=3005
ENV FLASK_ENV=development

CMD ["flask", "run", "--reload"]