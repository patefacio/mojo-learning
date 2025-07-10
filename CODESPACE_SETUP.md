# GitHub Codespace Setup for Mojo Learning

This guide will help you set up a Mojo development environment in GitHub Codespaces using a simple Python base and manual Mojo installation.

## Step 1: Create the Codespace

1. Go to your `mojo-learning` repository on GitHub
2. Click the green "Code" button
3. Go to the "Codespaces" tab
4. Click "Create codespace on main"

The codespace will use a simple Python 3.11 environment that should start without issues.

## Step 2: Install Mojo Manually

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

### 5. Install Mojo
```bash
magic install mojo
```

**Note:** This step may require authentication. If prompted, follow the instructions to authenticate with Modular.

### 6. Verify Mojo installation
```bash
mojo --version
```

## Step 3: Test Your Setup

### Create a simple Mojo program:
```bash
echo 'print("Hello, Mojo!")' > hello.mojo
```

### Run it:
```bash
mojo hello.mojo
```

## Step 4: Set Up Jupyter (Optional)

Jupyter is already installed. To start it:

```bash
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root
```

Then access it via the forwarded port in your codespace.

## Troubleshooting

### If Magic CLI installation fails:
- Check your internet connection
- Try running the installation command again
- Ensure you have proper permissions

### If Mojo installation fails:
- Make sure Magic CLI is properly installed and in your PATH
- Try running `magic auth` to authenticate first
- Check if you have access to Mojo (may require signing up at modular.com)

### If PATH issues persist:
- Restart your terminal or create a new terminal session
- Double-check that the export command was added to ~/.bashrc
- Manually run: `export PATH="$HOME/.modular/bin:$PATH"`

## Development Workflow

1. **Edit files** directly in the VS Code interface
2. **Run Mojo programs** in the terminal
3. **Use Jupyter** for interactive development
4. **Commit changes** using the VS Code Git interface

## What's Included

- Python 3.11 with pip
- Jupyter Notebook and IPython
- VS Code extensions for Python and Jupyter
- Port 8888 forwarded for Jupyter access

## Next Steps

- Create more Mojo programs in the workspace
- Explore Mojo documentation and examples
- Use Jupyter notebooks for interactive learning
- Set up version control for your Mojo projects

## Notes

- This setup avoids the custom devcontainer issues we encountered earlier
- All Mojo-related tools are installed manually after the codespace starts
- The environment should be stable and persistent across codespace sessions
- Remember to authenticate with Modular if prompted during Mojo installation