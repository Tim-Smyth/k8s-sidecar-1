FROM        python:3.7-alpine
WORKDIR     /app
COPY        requirements.txt .
RUN         pip install -r requirements.txt
COPY        sidecar/* ./
ENV         PYTHONUNBUFFERED=1
CMD         [ "python", "-u", "/app/sidecar.py" ]
