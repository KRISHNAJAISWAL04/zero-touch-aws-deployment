from fastapi import FastAPI
import socket
import platform
import os
from datetime import datetime

app = FastAPI(
    title="Zero Touch AWS Deployment ",
    version="1.0.0"
)


@app.get("/")
def home():
    return {
        "project": "Zero Touch AWS Deployment ready",
        "status": "Running 🚀",
        "version": "1.0.0"
    }


@app.get("/health")
def health():
    return {
        "status": "healthy"
    }


@app.get("/info")
def info():
    return {
        "hostname": socket.gethostname(),
        "os": platform.system(),
        "python_version": platform.python_version(),
        "current_time": datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    }


@app.get("/environment")
def environment():
    return {
        "environment": dict(os.environ)
    }