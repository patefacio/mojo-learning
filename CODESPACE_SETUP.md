# GitHub Codespace Setup for Mojo Learning

This guide will help you set up a Mojo development environment in GitHub Codespaces using the Magic CLI project-based workflow.

## Step 1: Create the Codespace

1. Go to your `mojo-learning` repository on GitHub
2. Click the green "Code" button
3. Go to the "Codespaces" tab
4. Click "Create codespace on main"

The codespace will use a simple Python 3.11 environment with git and essential tools.

## Step 2: Set Up Magic CLI and Mojo

Once your codespace is running, open the terminal and follow these steps:

### 1. Install the Magic CLI
```bash
curl -ssL https://magic.modular.com | bash
```

### 2. Add Magic to your PATH
```bash
export PATH="$HOME/.modular/bin:$PATH"
```

### 3. Make the PATH change permanent
```bash
echo 'export PATH="$HOME/.modular/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### 4. Verify Magic CLI installation
```bash
magic --version
```

### 5. Install Mojo using the project configuration
The repository includes a `pixi.toml` file that defines the Mojo project. Install all dependencies:

```bash
magic install
```

**Note:** This will install MAX (which includes Mojo) and all other dependencies defined in the `pixi.toml` file.

### 6. Activate the environment
```bash
magic shell
```

### 7. Verify Mojo installation
```bash
mojo --version
```

## Step 3: Test Your Setup

### Run the hello-mojo task:
```bash
magic run hello-mojo
```

### Or create and run a Mojo program manually:
```bash
echo 'print("Hello, Mojo!")' > hello.mojo
mojo hello.mojo
```

## Step 4: Start Jupyter (Optional)

Use the predefined task to start Jupyter:

```bash
magic run start-jupyter
```

Or start it manually:
```bash
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root
```

Then access it via the forwarded port in your codespace.

## Understanding the Magic CLI Project Structure

The `pixi.toml` file in your repository defines:

- **Dependencies**: MAX (Mojo), Python, Jupyter, etc.
- **Tasks**: Predefined commands like `hello-mojo` and `start-jupyter`
- **Channels**: Package repositories including Modular's conda channel
- **Platforms**: Supported operating systems

### Key Commands:

- `magic install` - Install all project dependencies
- `magic shell` - Activate the project environment
- `magic run <task>` - Run a predefined task
- `magic add <package>` - Add a new dependency
- `magic list` - Show installed packages

## Troubleshooting

### If Magic CLI installation fails:
- Check your internet connection
- Try running the installation command again
- Ensure you have proper permissions

### If `magic install` fails:
- Check if you have access to Modular's packages (may require authentication)
- Try running `magic auth login` if authentication is required
- Check the `pixi.toml` file for any syntax errors

### If Mojo is not found after installation:
- Make sure you're in the activated environment: `magic shell`
- Check if MAX was installed: `magic list | grep max`
- Verify the environment is active (you should see the environment name in your prompt)

### If PATH issues persist:
- Restart your terminal or create a new terminal session
- Double-check that the export command was added to ~/.bashrc
- Manually run: `export PATH="$HOME/.modular/bin:$PATH"`

## Development Workflow

1. **Activate the environment**: `magic shell` (do this in each new terminal)
2. **Edit files** directly in the VS Code interface
3. **Run Mojo programs**: `mojo your_program.mojo`
4. **Use predefined tasks**: `magic run hello-mojo`
5. **Start Jupyter**: `magic run start-jupyter`
6. **Add dependencies**: `magic add package_name`
7. **Commit changes** using the VS Code Git interface

## Available Tasks

The project includes these predefined tasks:

- `magic run hello-mojo` - Create and run a simple Mojo program
- `magic run start-jupyter` - Start Jupyter notebook server

## Project Structure

```
mojo-learning/
├── pixi.toml           # Project configuration and dependencies
├── hello.mojo          # Sample Mojo program (created by tasks)
├── *.mojo              # Your Mojo programs
└── notebooks/          # Jupyter notebooks (create this directory)
```

## Adding New Dependencies

To add packages to your project:

```bash
# Add a conda package
magic add numpy

# Add a PyPI package
magic add --pypi requests
```

## What's Included

- **MAX/Mojo** - The Mojo programming language
- **Python 3.9+** - Python runtime
- **Jupyter** - Interactive notebook environment
- **IPython** - Enhanced Python shell
- **Development tools** - pytest, black (in dev feature)

## Next Steps

- Explore the Mojo documentation and examples
- Create more Mojo programs in the workspace
- Use Jupyter notebooks for interactive learning
- Add more dependencies as needed with `magic add`
- Create custom tasks in `pixi.toml` for common workflows

## Notes

- Always run `magic shell` in new terminals to activate the environment
- The environment is defined by `pixi.toml` and is reproducible
- Dependencies are installed in an isolated environment
- The Magic CLI replaces the old `modular` CLI and uses a project-based approach
- MAX includes Mojo and related tools from Modular