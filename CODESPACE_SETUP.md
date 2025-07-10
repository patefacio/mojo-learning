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

### 5. Check Magic CLI syntax and install Mojo
The Magic CLI syntax may have changed. First, check what options are available:

```bash
magic --help
magic install --help
```

Try one of these commands to install Mojo:
```bash
# Option 1: Try the basic install command
magic install

# Option 2: If that doesn't work, try:
magic auth
magic install

# Option 3: Check if there's a specific package name
magic search mojo
magic install max  # MAX might be the package name now
```

**Note:** The Magic CLI has evolved, so the exact syntax may differ. Follow any authentication prompts that appear.

### 6. Verify Mojo installation
```bash
mojo --version
```

If `mojo` command is not found, try:
```bash
# Check if it's installed under a different name
which mojo
ls ~/.modular/bin/
max --version  # MAX might be the new name
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
- The Magic CLI syntax has changed - try `magic install` without arguments first
- Look for error messages about required authentication or package names
- Try `magic search` to see available packages

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
- The Magic CLI syntax has evolved - use `magic --help` to see current options
- You may need to install "MAX" instead of "mojo" directly