FROM mcr.microsoft.com/devcontainers/universal:2

# Set environment variables
ENV MAGIC_DIR=/home/codespace/.modular
ENV PATH="/home/codespace/.modular/bin:$PATH"

# Switch to codespace user
USER codespace

# Install Magic CLI
RUN curl -ssL https://magic.modular.com | bash

# Create working directory
WORKDIR /workspaces

# Note: Mojo installation will be done in postCreateCommand to handle authentication properly
