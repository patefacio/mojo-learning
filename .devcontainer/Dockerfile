FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive
ENV MAGIC_DIR=/root/.modular
ENV PATH="/root/.modular/bin:$PATH"

# Update package lists and install essential dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    build-essential \
    python3 \
    python3-pip \
    ca-certificates \
    coreutils \
    util-linux \
    procps \
    dash \
    && rm -rf /var/lib/apt/lists/*

# Ensure sleep command is available in multiple locations for compatibility
RUN ln -sf /usr/bin/sleep /bin/sleep && \
    ln -sf /usr/bin/sleep /usr/local/bin/sleep && \
    which sleep && sleep 1

# Install Magic CLI
RUN curl -ssL https://magic.modular.com | bash

# Create working directory
WORKDIR /workspace

# Note: Mojo installation will be done in postCreateCommand to handle authentication properly
