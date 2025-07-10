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

# Install Magic CLI and set up Mojo
RUN curl -ssL https://magic.modular.com | bash && \
    /root/.modular/bin/magic --version

# Set up environment for Magic and Mojo
ENV PATH="/root/.modular/bin:$PATH"

# Create working directory
WORKDIR /workspace

# Note: Mojo installation will be done in postCreateCommand to handle authentication properly
