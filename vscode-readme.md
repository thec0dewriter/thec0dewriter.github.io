# VS Code Development Guide for Life After Coding Blog

This guide covers all VS Code-specific workflows, tasks, and shortcuts for developing the Quarto blog with pixi integration.

## 🚀 Quick Start

### 1. Open the Project

- Open the workspace file: `life-after-coding-blog.code-workspace`
- Or open the folder directly in VS Code

### 2. Install Recommended Extensions

VS Code will prompt you to install recommended extensions. Key extensions:

- **Quarto** (`quarto.quarto`) - Essential for `.qmd` files
- **Python** (`ms-python.python`) - Python support
- **Black Formatter** (`ms-python.black-formatter`) - Code formatting
- **Flake8** (`ms-python.flake8`) - Linting
- **MyPy** (`ms-python.mypy-type-checker`) - Type checking
- **Even Better TOML** (`tamasfe.even-better-toml`) - For `pixi.toml`

### 3. Setup Environment

Run the first-time setup task:

```
Ctrl+Shift+P → "Tasks: Run Task" → "Pixi: Install Dependencies"
```

## 🎯 Essential VS Code Tasks

### Primary Workflow Tasks

| Task Name | Keyboard Shortcut | Description |
|-----------|-------------------|-------------|
| `Quarto: Preview (pixi)` | `Ctrl+Shift+Q` → `Ctrl+Shift+P` | Start live preview server |
| `Quarto: Render (pixi)` | `Ctrl+Shift+Q` → `Ctrl+Shift+R` | Build complete site |
| `Quarto: Clean (pixi)` | `Ctrl+Shift+Q` → `Ctrl+Shift+C` | Clean output files |
| `Quarto: Check (pixi)` | `Ctrl+Shift+Q` → `Ctrl+Shift+K` | Validate project |

### Environment Management

| Task Name | Keyboard Shortcut | Description |
|-----------|-------------------|-------------|
| `Pixi: Install Dependencies` | `Ctrl+Shift+P` → `Ctrl+Shift+I` | Install all dependencies |
| `Pixi: Shell` | `Ctrl+Shift+P` → `Ctrl+Shift+S` | Open pixi environment shell |

### Development Tools

| Task Name | Keyboard Shortcut | Description |
|-----------|-------------------|-------------|
| `Dev: Format Code (pixi)` | `Ctrl+Shift+D` → `Ctrl+Shift+F` | Format Python code with Black |
| `Dev: Lint Code (pixi)` | `Ctrl+Shift+D` → `Ctrl+Shift+L` | Lint code with Flake8 |
| `Dev: Type Check (pixi)` | `Ctrl+Shift+D` → `Ctrl+Shift+T` | Type check with MyPy |

### Fallback Tasks (without Pixi)

| Task Name | Description |
|-----------|-------------|
| `Quarto: Preview (fallback)` | Preview without pixi environment |
| `Quarto: Render (fallback)` | Render without pixi environment |

## 🔧 Command Reference

### Access Tasks

There are multiple ways to run tasks in VS Code:

#### Method 1: Command Palette

```
Ctrl+Shift+P → "Tasks: Run Task" → [Select Task]
```

#### Method 2: Keyboard Shortcuts

Use the custom shortcuts defined above for frequently used tasks.

#### Method 3: Terminal

You can also run pixi commands directly in the integrated terminal:

```bash
pixi run preview
pixi run render
pixi run clean
pixi run check
```

### Pixi-Specific Commands

#### Environment Commands

```bash
pixi install                    # Install dependencies
pixi shell                     # Activate environment
pixi list                      # List installed packages
pixi add <package>             # Add new package
pixi remove <package>          # Remove package
```

#### Blog Development Commands

```bash
pixi run preview               # Start preview server
pixi run render                # Render site
pixi run clean                 # Clean outputs
pixi run check                 # Check project
pixi run serve                 # Serve on custom port (4200)
pixi run build                 # Build site
pixi run new-post              # Create new blog post (interactive)
```

#### Development Tools Commands

```bash
# Use dev environment (-e dev flag)
pixi run -e dev format         # Format Python code with Black
pixi run -e dev lint           # Lint code with Flake8
pixi run -e dev typecheck      # Type check with MyPy
```

## 📝 Blog Management Workflows

### Creating a New Post

#### Method 1: Using the Script (Recommended)

```bash
# In VS Code terminal
pixi run new-post
```

This interactive script will:

- Prompt for title, description, author
- Ask for categories
- Create the post directory and file
- Set up proper front matter

#### Method 2: Manual Creation

1. Create new folder: `posts/my-post-title/`
2. Create `index.qmd` file with front matter:

```yaml
---
title: "My Post Title"
description: "Post description"
author: "The Code Writer"
date: "2025-08-10"
categories:
  - category1
  - category2
draft: true
---
```

### Development Workflow

#### Daily Development Loop

1. **Start preview**: `Ctrl+Shift+Q` → `Ctrl+Shift+P`
2. **Edit content** in `.qmd` files
3. **Save files** (auto-preview updates)
4. **Format code** before committing: `Ctrl+Shift+D` → `Ctrl+Shift+F`

#### Publishing Workflow

1. **Check for issues**: `Ctrl+Shift+Q` → `Ctrl+Shift+K`
2. **Final render**: `Ctrl+Shift+Q` → `Ctrl+Shift+R`
3. **Commit and push** (triggers automatic GitHub Pages deployment)

## 🛠️ VS Code Configuration

### Settings Highlights

Key settings in `.vscode/settings.json`:

```json
{
  "python.defaultInterpreterPath": "./.pixi/envs/default/bin/python",
  "quarto.render.previewType": "internal",
  "editor.formatOnSave": true,
  "files.associations": {
    "*.qmd": "quarto",
    "pixi.toml": "toml"
  }
}
```

### Workspace Features

- **Integrated terminal** with pixi environment
- **Problem matchers** for Flake8 and MyPy
- **File associations** for Quarto and TOML files
- **Auto-formatting** on save
- **Search exclusions** for generated files

## 🐛 Troubleshooting

### Common Issues and Solutions

#### "Pixi not found"

- Ensure pixi is installed and in PATH
- Restart VS Code after installing pixi
- Use fallback tasks: `Quarto: Preview (fallback)`

#### Python interpreter not detected

- Run task: "Pixi: Install Dependencies"
- Reload VS Code window: `Ctrl+Shift+P` → "Developer: Reload Window"
- Check `.vscode/settings.json` Python path

#### Tasks not appearing

- Reload VS Code window
- Ensure workspace is opened (not just folder)
- Check `.vscode/tasks.json` syntax

#### Preview not working

- Check Quarto installation: `quarto --version` in terminal
- Verify port availability (default 4200)
- Check browser popup blockers

### Getting Help

- **Command Palette**: `F1` or `Ctrl+Shift+P`
- **View all tasks**: "Tasks: Run Task"
- **Problems panel**: Check for errors
- **Terminal output**: View detailed logs

## 📊 Advanced Features

### Debug Configurations

Available in Run and Debug panel (`Ctrl+Shift+D`):

- **Python: Current File (Pixi)** - Debug Python scripts with pixi environment
- **Python: Jupyter Notebook (Pixi)** - Debug notebooks
- **Quarto Preview (Debug)** - Debug Quarto rendering issues

### Problem Matchers

Automatic error detection for:

- **Flake8**: Python linting errors appear in Problems panel
- **MyPy**: Type checking issues highlighted
- **Quarto**: Build errors and warnings captured

### Background Tasks

- **Preview server**: Runs in background, auto-reloads on file changes
- **Pixi shell**: Opens in new terminal tab
- **Watch mode**: Continuous building during development

## 🎨 Customization

### Adding Custom Tasks

Edit `.vscode/tasks.json`:

```json
{
  "label": "My Custom Task",
  "type": "shell",
  "command": "pixi",
  "args": ["run", "my-command"],
  "group": "build",
  "detail": "Custom task description"
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

### Custom Pixi Commands

Add to `pixi.toml`:

```toml
[tasks]
my-task = "echo 'Hello World'"
complex-task = { cmd = "python scripts/my_script.py", depends_on = ["install"] }
```

## 📚 Related Files

- **Main README**: `../README.md` - General project documentation
- **VS Code Guide**: `../docs/vscode-guide.md` - Detailed task documentation
- **Pixi Config**: `../pixi.toml` - Environment and task definitions
- **Workspace**: `../life-after-coding-blog.code-workspace` - VS Code workspace settings

## 🔗 Resources

- [Quarto VS Code Extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)
- [Pixi Documentation](https://pixi.sh)
- [VS Code Tasks Documentation](https://code.visualstudio.com/docs/editor/tasks)
- [Quarto Documentation](https://quarto.org)

---

💡 **Pro Tip**: Bookmark this guide and use `Ctrl+Shift+Q` → `Ctrl+Shift+P` for quick preview during development!
