FROM python:3.11-slim

WORKDIR /app
COPY subway_rush.html .
COPY Override_Protocol.mp3 .

EXPOSE 8080

CMD ["python", "-m", "http.server", "8080"]
