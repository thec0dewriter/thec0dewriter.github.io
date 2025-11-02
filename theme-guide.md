# 🎨 Theme Options for Life After Coding

This guide shows you different theme options for your Quarto blog. To change themes, simply update the `theme` value in `_quarto.yml`.

## Built-in Quarto Themes

### 1. Modern Professional Themes

- **`flatly`** - Clean, modern Bootstrap-based theme
- **`cosmo`** - Current theme, friendly and readable
- **`lumen`** - Light and minimalistic
- **`sandstone`** - Warm, earthy tones

### 2. Dark/Light Adaptive Themes

- **`quartz`** - Professional with good contrast
- **`vapor`** - Modern with subtle gradients
- **`zephyr`** - Clean with excellent typography

### 3. Academic/Technical Themes

- **`united`** - Bold and confident
- **`journal`** - Academic paper style
- **`readable`** - Optimized for long-form reading

### 4. Creative Themes

- **`sketchy`** - Hand-drawn, informal style
- **`minty`** - Fresh, mint-green accents
- **`morph`** - Soft, rounded design

## How to Change Themes

In your `_quarto.yml` file, find this section:

```yaml
format:
  html:
    theme: cosmo  # ← Change this line
    css: styles.css
```

### Examples

**For a professional tech blog:**

```yaml
theme: flatly
```

**For a modern, dark-friendly theme:**

```yaml
theme: quartz
```

**For academic/technical writing:**

```yaml
theme: journal
```

**For a unique, creative look:**

```yaml
theme: vapor
```

## Advanced: Custom Theme Combinations

You can also combine themes with your custom CSS:

```yaml
theme: [flatly, styles.css]
```

Or create completely custom themes:

```yaml
theme: 
  light: [cosmo, styles.css]
  dark: [darkly, styles.css]
```

## Preview Your Changes

After changing the theme in `_quarto.yml`:

1. **Using VS Code task:** Press `Ctrl+Shift+P` → "Tasks: Run Task" → "Preview Blog"
2. **Using terminal:** Run `pixi run preview`
3. **Manual:** Run `quarto preview`

## Recommended Combinations

| Blog Type | Theme | Why |
|-----------|-------|-----|
| Tech Blog | `flatly` | Clean, professional, great code highlighting |
| Personal Blog | `cosmo` | Friendly, readable, good for storytelling |
| Academic | `journal` | Formal, excellent typography for long articles |
| Portfolio | `quartz` | Modern, showcases work well |
| Creative | `vapor` | Unique, artistic, stands out |

## Current Enhanced Styling

Your blog currently uses:

- **Base theme:** `cosmo`
- **Custom CSS:** Enhanced with modern typography, animations, and improved styling
- **Fonts:** Inter for text, JetBrains Mono for code
- **Colors:** Professional blue palette with gradient accents
- **Features:** Hover effects, smooth transitions, responsive design

Try different themes to see what works best for your content style!
