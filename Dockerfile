# AI-Based SI-Compliant PCB Design - Docker Environment
FROM python:3.10-slim

LABEL maintainer="Thiyanayugi Mariraj <yugimariraj01@gmail.com>"
LABEL description="Docker environment for AI-Based Signal Integrity PCB Design"

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose Jupyter port
EXPOSE 8888

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV JUPYTER_ENABLE_LAB=yes

# Default command: start Jupyter notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
