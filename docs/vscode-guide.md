# VS Code Tasks and Shortcuts Guide

This document outlines all the VS Code tasks, keyboard shortcuts, and development workflows available for the Life After Coding blog project.

## 🛠️ Available Tasks

### Quarto Tasks (Primary - using Pixi)

| Task | Description | Keyboard Shortcut |
|------|-------------|-------------------|
| `Quarto: Preview (pixi)` | Start live preview server | `Ctrl+Shift+Q` → `Ctrl+Shift+P` |
| `Quarto: Render (pixi)` | Build the complete site | `Ctrl+Shift+Q` → `Ctrl+Shift+R` |
| `Quarto: Clean (pixi)` | Clean output files | `Ctrl+Shift+Q` → `Ctrl+Shift+C` |
| `Quarto: Check (pixi)` | Check for issues | `Ctrl+Shift+Q` → `Ctrl+Shift+K` |

### Pixi Environment Tasks

| Task | Description | Keyboard Shortcut |
|------|-------------|-------------------|
| `Pixi: Install Dependencies` | Install all dependencies | `Ctrl+Shift+P` → `Ctrl+Shift+I` |
| `Pixi: Shell` | Open pixi shell environment | `Ctrl+Shift+P` → `Ctrl+Shift+S` |

### Development Tasks

| Task | Description | Keyboard Shortcut |
|------|-------------|-------------------|
| `Dev: Format Code (pixi)` | Format Python code with Black | `Ctrl+Shift+D` → `Ctrl+Shift+F` |
| `Dev: Lint Code (pixi)` | Lint code with Flake8 | `Ctrl+Shift+D` → `Ctrl+Shift+L` |
| `Dev: Type Check (pixi)` | Type check with MyPy | `Ctrl+Shift+D` → `Ctrl+Shift+T` |

### Fallback Tasks (without Pixi)

| Task | Description |
|------|-------------|
| `Quarto: Preview (fallback)` | Preview without pixi |
| `Quarto: Render (fallback)` | Render without pixi |

## 🎯 Quick Start Workflow

### 1. First Time Setup

```bash
# Install dependencies
Ctrl+Shift+P → "Tasks: Run Task" → "Pixi: Install Dependencies"

# Or use Command Palette
Ctrl+Shift+P → "Pixi: Install Dependencies"
```

### 2. Daily Development

```bash
# Start preview server (most common)
Ctrl+Shift+Q → Ctrl+Shift+P

# Create new post (via terminal)
pixi run new-post

# Format code before committing
Ctrl+Shift+D → Ctrl+Shift+F
```

### 3. Publishing Workflow

```bash
# Check for issues
Ctrl+Shift+Q → Ctrl+Shift+K

# Final render
Ctrl+Shift+Q → Ctrl+Shift+R

# Commit and push (automatic GitHub Pages deployment)
```

## 🔧 Pixi Commands Reference

### Direct Pixi Commands (Terminal)

```bash
# Environment management
pixi install                    # Install dependencies
pixi shell                     # Activate environment
pixi list                      # List installed packages
pixi add <package>             # Add new package

# Quarto operations  
pixi run preview               # Start preview server
pixi run render                # Render site
pixi run clean                 # Clean outputs
pixi run check                 # Check project
pixi run serve                 # Serve on custom port
pixi run build                 # Build site

# Development tools
pixi run -e dev format         # Format code
pixi run -e dev lint           # Lint code  
pixi run -e dev typecheck      # Type check

# Blog management
pixi run new-post              # Create new blog post
```

### VS Code Integration

The tasks are integrated with VS Code's:

- **Command Palette** (`Ctrl+Shift+P`)
- **Task Runner** (`Ctrl+Shift+P` → "Tasks: Run Task")
- **Terminal** (automatic pixi environment activation)
- **Problems Panel** (error highlighting for linting)

## 🚀 Advanced Features

### 1. Problem Matchers

- **Flake8**: Errors and warnings appear in Problems panel
- **MyPy**: Type checking issues highlighted
- **Quarto**: Build errors and warnings captured

### 2. Background Tasks

- Preview server runs in background
- Pixi shell opens in new terminal
- Live reload for development

### 3. Environment Variables

- `PIXI_PROJECT_ROOT` automatically set
- Workspace-relative paths
- Cross-platform compatibility

### 4. Debug Configurations

- **Python debugging** with pixi environment
- **Jupyter notebook** integration
- **Quarto debug mode** for troubleshooting

## 📝 Customization

### Adding New Tasks

Edit `.vscode/tasks.json`:

```json
{
    "label": "My Custom Task",
    "type": "shell", 
    "command": "pixi",
    "args": ["run", "my-command"],
    "group": "build",
    "detail": "Description of what this task does"
}
```

### Adding Keyboard Shortcuts

Edit `.vscode/keybindings.json`:

```json
{
    "key": "ctrl+shift+x ctrl+shift+y",
    "command": "workbench.action.tasks.runTask", 
    "args": "My Custom Task"
}
```

### Custom Pixi Tasks

Edit `pixi.toml`:

```toml
[tasks]
my-task = "echo 'Hello World'"
complex-task = { cmd = "python scripts/my_script.py", depends_on = ["install"] }
```

## 🐛 Troubleshooting

### Common Issues

1. **"Pixi not found"**
   - Ensure pixi is installed and in PATH
   - Restart VS Code after installing pixi
   - Use fallback tasks if needed

2. **Python interpreter not found**
   - Run "Pixi: Install Dependencies" first
   - Check `.vscode/settings.json` Python path
   - Reload VS Code window

3. **Tasks not appearing**
   - Reload VS Code window
   - Check `tasks.json` syntax
   - Ensure workspace is opened correctly

### Getting Help

- Press `F1` or `Ctrl+Shift+P` for Command Palette
- Use "Tasks: Run Task" to see all available tasks
- Check "Problems" panel for errors
- View "Terminal" for detailed output

## 📚 Resources

- [Quarto Documentation](https://quarto.org)
- [Pixi Documentation](https://pixi.sh)
- [VS Code Tasks Documentation](https://code.visualstudio.com/docs/editor/tasks)
- [Project README](../README.md)
