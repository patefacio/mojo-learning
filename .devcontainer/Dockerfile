FROM ubuntu:22.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Magic CLI (replaces Modular CLI)
RUN curl -ssL https://magic.modular.com | bash

# Set up environment for Magic
ENV PATH="/root/.modular/bin:$PATH"

# Create working directory
WORKDIR /workspace
