# Mojo Learning Environment

A Docker-based development environment for learning Mojo programming language.

## Problem with GitHub Codespaces

This repository was originally designed for GitHub Codespaces, but we encountered persistent issues with the devcontainer setup where essential system utilities (`sleep`, `uname`) were not available during container initialization. This appears to be a compatibility issue between GitHub Codespaces and custom Mojo development environments.

## Local Docker Setup (Recommended)

### Prerequisites

- Docker installed on your system
- Docker Compose (usually comes with Docker Desktop)

### Quick Start

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/mojo-learning.git
   cd mojo-learning
   ```

2. **Build and run the development environment:**
   ```bash
   docker-compose up -d
   ```

3. **Access the container:**
   ```bash
   docker-compose exec mojo-dev bash
   ```

4. **Install Mojo (inside the container):**
   ```bash
   magic install mojo
   ```

5. **Start Jupyter notebook (optional):**
   ```bash
   jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root
   ```

### Alternative: Simple Docker Run

If you prefer not to use docker-compose:

```bash
# Build the image
docker build -f Dockerfile.simple -t mojo-learning .

# Run the container
docker run -it -p 8888:8888 -v $(pwd):/workspace mojo-learning
```

## What's Included

- **Ubuntu 22.04** base image
- **Python 3.x** with pip
- **Magic CLI** for Mojo installation
- **Jupyter Notebook** for interactive development
- **Essential development tools** (git, curl, wget, build-essential)

## Usage

Once inside the container:

1. **Verify Mojo installation:**
   ```bash
   mojo --version
   ```

2. **Create your first Mojo file:**
   ```bash
   echo 'print("Hello, Mojo!")' > hello.mojo
   mojo hello.mojo
   ```

3. **Use Jupyter for interactive development:**
   - Access Jupyter at `http://localhost:8888`
   - Create new notebooks with Mojo kernels

## Development Workflow

1. **Edit files** on your host machine using your preferred editor
2. **Run/test code** inside the Docker container
3. **Access Jupyter** through your web browser
4. **Commit changes** from your host machine

## Troubleshooting

### Container won't start
- Ensure Docker is running
- Check if ports 8888 is available
- Try rebuilding: `docker-compose build --no-cache`

### Mojo installation fails
- Run `magic auth` to authenticate with Modular
- Check your internet connection
- Verify Magic CLI is installed: `magic --version`

### Permission issues
- The container runs as root by default
- Files created in the container will be owned by root
- Use `sudo chown -R $USER:$USER .` on the host to fix ownership

## Contributing

1. Fork the repository
2. Make your changes
3. Test with the Docker setup
4. Submit a pull request

## Notes

- This setup prioritizes functionality over the convenience of cloud-based development
- All development happens in a consistent Docker environment
- The Magic CLI and Mojo installation require authentication with Modular
- Jupyter notebooks are accessible at `http://localhost:8888`

## Future Improvements

- [ ] Add Mojo kernel for Jupyter
- [ ] Improve file permissions handling
- [ ] Add more example Mojo programs
- [ ] Create development scripts for common tasks