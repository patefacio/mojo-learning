FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV MAGIC_DIR=/root/.modular

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    python3 \
    python3-pip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Magic CLI and Mojo
RUN curl -ssL https://magic.modular.com | bash && \
    /root/.modular/bin/magic install mojo

# Set up environment for Magic and Mojo
ENV PATH="/root/.modular/bin:$PATH"

# Create working directory
WORKDIR /workspace

# Verify installation
RUN magic --version && mojo --version
