# GitHub Codespace Setup for Mojo Learning

This guide will help you set up a working Mojo development environment in GitHub Codespaces using the Magic CLI and pixi project management.

## Step 1: Create the Codespace

1. Go to your `mojo-learning` repository on GitHub
2. Click the green "Code" button
3. Go to the "Codespaces" tab
4. Click "Create codespace on main"

The codespace will use a Python 3.11 environment with git and essential development tools.

## Step 2: Set Up Magic CLI and Install Mojo

Once your codespace is running, the Magic CLI should already be installed. Follow these steps:

### 1. Verify Magic CLI is installed
```bash
magic --version
```
You should see something like: `magic 0.7.2 - (based on pixi 0.41.4)`

### 2. Install all project dependencies (including Mojo)
```bash
magic install
```

This will install all dependencies defined in `pixi.toml`, including:
- Python and Jupyter
- The `modular` package (which includes Mojo and MAX)
- Development tools

### 3. Activate the project environment
```bash
magic shell
```

You should see your prompt change to show `(mojo-learning)` indicating the environment is active.

### 4. Verify Mojo installation
```bash
mojo --version
max --version
```

You should see output like:
- `Mojo 25.5.0.dev2025070905 (21d9f320)`
- `MAX 25.5.0.dev2025070905`

## Step 3: Test Your Setup

### Run the hello-mojo task:
```bash
magic run hello-mojo
```

### Or create and run a Mojo program manually:
```bash
echo 'print("Hello from Mojo!")' > hello.mojo
mojo hello.mojo
```

## Step 4: Start Jupyter (Optional)

Use the predefined task to start Jupyter:

```bash
magic run start-jupyter
```

Then access it via the forwarded port (8888) in your codespace.

## Understanding the Setup

### Project Configuration
The `pixi.toml` file defines:
- **Dependencies**: modular (Mojo/MAX), Python, Jupyter
- **Tasks**: Predefined commands for common operations
- **Channels**: Package repositories including Modular's conda channel
- **Platforms**: Linux 64-bit (for Codespaces)

### Key Commands:
- `magic install` - Install all project dependencies
- `magic shell` - Activate the project environment
- `magic run <task>` - Run a predefined task
- `magic add <package>` - Add a new dependency
- `magic list` - Show installed packages

## Development Workflow

1. **Always activate the environment first**: `magic shell`
2. **Edit files** directly in the VS Code interface
3. **Run Mojo programs**: `mojo your_program.mojo`
4. **Use predefined tasks**: `magic run hello-mojo`
5. **Start Jupyter**: `magic run start-jupyter`
6. **Add dependencies**: `magic add package_name`
7. **Commit changes** using the VS Code Git interface

## Available Tasks

- `magic run hello-mojo` - Create and run a simple Mojo program
- `magic run hello-python` - Create and run a simple Python program
- `magic run start-jupyter` - Start Jupyter notebook server
- `magic run check-mojo` - Check if Mojo is available
- `magic run check-max` - Check if MAX is available

## Troubleshooting

### If magic install fails:
- Check your internet connection
- Verify you have the latest repository changes: `git pull origin main`
- Try running the command again

### If Mojo is not found:
- Make sure you're in the activated environment: `magic shell`
- Check if the modular package was installed: `magic list | grep modular`
- Verify the environment is active (you should see `(mojo-learning)` in your prompt)

### If Jupyter doesn't start:
- Make sure the environment is activated: `magic shell`
- Check that port 8888 is forwarded in your codespace
- Try starting manually: `jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root`

## Project Structure

```
mojo-learning/
├── pixi.toml              # Project configuration and dependencies
├── CODESPACE_SETUP.md     # This setup guide
├── README.md              # Project documentation
├── hello.mojo             # Sample Mojo program (created by tasks)
├── hello.py               # Sample Python program (created by tasks)
└── *.mojo                 # Your Mojo programs
```

## What's Included

- **Mojo** - The Mojo programming language
- **MAX** - Modular's AI platform
- **Python 3.9+** - Python runtime
- **Jupyter** - Interactive notebook environment
- **Magic CLI** - Project and package management
- **Development tools** - Git, curl, wget, etc.

## Next Steps

- Explore the Mojo documentation: https://docs.modular.com/mojo/
- Create more Mojo programs in the workspace
- Use Jupyter notebooks for interactive learning
- Add more dependencies as needed with `magic add`
- Create custom tasks in `pixi.toml` for common workflows

## Important Notes

- **Always run `magic shell`** in new terminals to activate the environment
- The environment is defined by `pixi.toml` and is reproducible
- Dependencies are installed in an isolated environment
- The `(mojo-learning)` prompt indicates the environment is active
- This setup uses the nightly build of Modular packages for the latest features

## Environment Management

- **Activate**: `magic shell`
- **Deactivate**: `exit` or `Ctrl+D`
- **Check status**: Look for `(mojo-learning)` in your prompt
- **Reinstall**: `magic install` (if you modify `pixi.toml`)
- **Update**: `magic update` (to get latest package versions)

This setup provides a complete, isolated Mojo development environment that works reliably in GitHub Codespaces!