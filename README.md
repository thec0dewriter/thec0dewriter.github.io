# Life After Coding Blog

A personal blog built with [Quarto](https://quarto.org), focusing on programming, technology, and career insights.

## 🌐 Live Site

Visit the blog at: [www.lifeaftercoding.net](https://www.lifeaftercoding.net)

## 🛠️ Built With

- **[Quarto](https://quarto.org)** - Modern scientific and technical publishing system
- **GitHub Pages** - Hosting
- **GitHub Actions** - Continuous deployment
- **Bootstrap** - CSS framework (via Quarto themes)

## 🏗️ Local Development

### Prerequisites

1. **Install Quarto**: Download from [quarto.org](https://quarto.org/docs/get-started/)
2. **Install Python** (optional, for code execution): [python.org](https://python.org)
3. **Install VS Code Extension**: [Quarto Extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)

### Setup

#### Option 1: Quick Setup Script (Recommended)

Run the setup script which will guide you through choosing between pip or pixi:

```bash
# Windows
setup.bat

# For pixi-only setup
setup-pixi.bat
```

#### Option 2: Manual Setup with pip

1. Clone the repository:

   ```bash
   git clone https://github.com/thec0dewriter/thec0dewriter.github.io.git
   cd thec0dewriter.github.io
   ```

2. Install Python dependencies (if using code execution):

   ```bash
   pip install jupyter matplotlib plotly pandas numpy seaborn
   ```

3. Preview the site locally:

   ```bash
   quarto preview
   ```

#### Option 3: Setup with Pixi (Recommended for Python developers)

[Pixi](https://pixi.sh) is a modern package manager that provides better dependency management and faster installations.

1. Clone the repository:

   ```bash
   git clone https://github.com/thec0dewriter/thec0dewriter.github.io.git
   cd thec0dewriter.github.io
   ```

2. Install pixi (if not already installed):

   ```bash
   # Windows PowerShell
   iwr -useb https://pixi.sh/install.ps1 | iex
   
   # macOS/Linux
   curl -fsSL https://pixi.sh/install.sh | bash
   ```

3. Install dependencies:

   ```bash
   pixi install
   ```

4. Preview the site:

   ```bash
   pixi run preview
   ```

#### Pixi Commands

```bash
# Enter pixi environment
pixi shell

# Preview the blog (auto-reload)
pixi run preview

# Render the blog
pixi run render

# Clean generated files
pixi run clean

# Development tasks
pixi run format      # Format Python code with black
pixi run lint        # Lint Python code with flake8
pixi run typecheck   # Type check Python code with mypy
```

4. Build the site:

   ```bash
   quarto render
   ```

### Adding New Posts

1. Create a new folder in the `posts/` directory:

   ```bash
   mkdir posts/my-new-post
   ```

2. Create an `index.qmd` file in your new folder:

   ```markdown
   ---
   title: "My New Post Title"
   description: "A brief description of the post"
   author: "The Code Writer"
   date: "2025-08-10"
   categories:
     - category1
     - category2
   draft: false
   ---

   Your content here...
   ```

3. Preview your changes:

   ```bash
   quarto preview
   ```

## 📝 Content Structure

```
├── _quarto.yml          # Site configuration
├── index.qmd            # Home page with blog listing
├── about.qmd            # About page
├── styles.css           # Custom CSS
├── posts/               # Blog posts directory
│   ├── _metadata.yml    # Shared post metadata
│   └── post-name/       # Individual post folders
│       └── index.qmd    # Post content
└── .github/
    └── workflows/
        └── publish.yml  # GitHub Actions deployment
```

## 🚀 Deployment

The site automatically deploys to GitHub Pages when changes are pushed to the main branch via GitHub Actions.

### Manual Deployment

If you need to deploy manually:

1. Render the site:

   ```bash
   quarto render
   ```

2. The rendered site will be in the `_site/` directory

## ⚙️ Configuration

Key configuration files:

- **`_quarto.yml`**: Main site configuration (title, navigation, theme, etc.)
- **`posts/_metadata.yml`**: Default settings for all blog posts
- **`styles.css`**: Custom CSS styling
- **`.github/workflows/publish.yml`**: GitHub Actions deployment workflow

## 🎨 Customization

### Themes

The site uses the `cosmo` theme. You can change it in `_quarto.yml`:

```yaml
format:
  html:
    theme: [cosmo, styles.css]  # Try: flatly, minty, pulse, etc.
```

### Navigation

Modify the navigation bar in `_quarto.yml`:

```yaml
website:
  navbar:
    left:
      - text: "Home"
        file: index.qmd
      - text: "About"
        file: about.qmd
```

## 📊 Features

- ✅ Responsive design
- ✅ RSS feed generation
- ✅ Search functionality
- ✅ Category filtering
- ✅ Code syntax highlighting
- ✅ Executable code blocks
- ✅ Cross-references and citations
- ✅ Dark mode support
- ✅ Social media links
- ✅ SEO optimization

## 🤝 Contributing

While this is a personal blog, suggestions and feedback are welcome! Feel free to:

1. Open an issue for suggestions
2. Submit a pull request for typos or improvements
3. Share the content if you find it useful

## 📄 License

Content is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)

Code examples and snippets are licensed under [MIT License](https://opensource.org/licenses/MIT)

## 📞 Contact

- **GitHub**: [@thec0dewriter](https://github.com/thec0dewriter)
- **Blog**: [www.lifeaftercoding.net](https://www.lifeaftercoding.net)
- **Email**: [Contact via GitHub](https://github.com/thec0dewriter)

---

Built with ❤️ using [Quarto](https://quarto.org)
