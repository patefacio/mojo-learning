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

   # Install Modular CLI and Mojo
   RUN curl -s https://get.modular.com | sh -
   RUN modular auth --skip-prompt
   RUN modular install mojo

   # Set up environment
   ENV MODULAR_HOME="/root/.modular"
   ENV PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

   # Create working directory
   WORKDIR /workspace
   
