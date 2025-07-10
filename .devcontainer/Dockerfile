FROM python:3.11

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV MAGIC_DIR=/root/.modular

# Update package lists and install essential system utilities
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    ca-certificates \
    coreutils \
    util-linux \
    procps \
    bash \
    zsh \
    && rm -rf /var/lib/apt/lists/*

# Verify essential commands are available
RUN uname -m && sleep 1 && echo "Basic utilities verified"

# Install Magic CLI
RUN curl -ssL https://magic.modular.com | bash

# Set up environment for Magic and Mojo
ENV PATH="/root/.modular/bin:$PATH"

# Create working directory
WORKDIR /workspace

# Verify Magic CLI installation
RUN magic --version || echo "Magic CLI installed but may need authentication"

# Note: Mojo installation will be done in postCreateCommand to handle authentication properly
