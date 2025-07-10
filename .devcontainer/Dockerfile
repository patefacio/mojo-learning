FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV MAGIC_DIR=/root/.modular

# Install system dependencies including coreutils for sleep command
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    python3 \
    python3-pip \
    ca-certificates \
    coreutils \
    bash \
    zsh \
    && rm -rf /var/lib/apt/lists/*

# Install Magic CLI
RUN curl -ssL https://magic.modular.com | bash

# Set up environment for Magic and Mojo
ENV PATH="/root/.modular/bin:$PATH"

# Create working directory
WORKDIR /workspace

# Verify Magic CLI installation
RUN magic --version || echo "Magic CLI installed but may need authentication"

# Note: Mojo installation will be done in postCreateCommand to handle authentication properly
