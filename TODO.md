# TODOs — Life After Coding

A running checklist to track site polish, theme customization, and feature ideas.

## 1) Theme and UI polish

- [ ] Evaluate built-in themes (current: `zephyr`)
  - [ ] Try `flatly` (clean, professional)
  - [ ] Try `quartz` (modern, dark-friendly)
  - [ ] Try `vapor` (creative gradients)
  - [ ] Try `journal` (academic/long-form)
  - [ ] Try `cosmo` (friendly/readable)

- [ ] Enable custom CSS
  - [ ] Uncomment `css: styles.css` in `_quarto.yml`
  - [ ] Tweak palette, fonts (Inter + JetBrains Mono), link/hover states
  - [ ] Unify card/blockquote/button styles across pages

- [ ] Support light/dark modes
  - [ ] Use separate themes in `_quarto.yml`:

    ```yaml
    format:
      html:
        theme:
          light: zephyr
          dark: darkly
        css: styles.css
    ```

- [ ] Improve code presentation
  - [ ] Set `highlight-style: github` (or `dracula`, `nord`, `monokai`)
  - [ ] Enable `code-copy: true`
  - [ ] Verify long lines wrap where desired

- [ ] Navbar/Footer polish
  - [ ] Add logo or wordmark in navbar
  - [ ] Make navbar sticky or transparent-on-top
  - [ ] Footer: add social icons, newsletter, year auto-update

## 2) Home page and layouts

- [ ] Home hero section (short intro + CTA to latest posts)
- [ ] Add a posts listing page with filters/tags
- [ ] Consistent featured images and excerpts on cards
- [ ] About page: add profile photo, timeline, skills badges

## 3) Content model and taxonomy

- [ ] Tags/Categories: enable and surface on post cards/pages
- [ ] Create tag index pages and tag cloud
- [ ] Define post template (front matter scaffold)
- [ ] Start a "Series" taxonomy (multi-part posts)

## 4) Images and media

- [ ] Organize images under `images/` and/or `posts/<slug>/`
- [ ] Add responsive images (widths, lazy-loading)
- [ ] Establish featured image guide (sizes/ratios)
- [ ] Add social preview image template (Open Graph)

## 5) SEO and sharing

- [ ] Confirm `site-url`, `title`, `description` (done)
- [ ] Add Open Graph + Twitter Card metadata
- [ ] Ensure `sitemap.xml` and `robots.txt` are emitted
- [ ] Add canonical URLs for posts
- [ ] Validate RSS feed contents

## 6) Analytics, comments, search

- [ ] Add analytics (Plausible, Google Analytics 4, etc.)
- [ ] Enable comments (Giscus, Utterances, or Hyvor)
- [ ] Improve built-in search (check search index size/perf)

## 7) Accessibility and performance

- [ ] Color contrast check for text/links/buttons
- [ ] Keyboard navigation through navbar and TOC
- [ ] Alt text on all images
- [ ] Lighthouse pass: Performance > 90, A11y > 90

## 8) Local dev experience

- [ ] Fix `quarto-preview.js` warnings on Windows
  - [ ] Verify Quarto install (system vs pixi env) and PATH
  - [ ] Consider installing Quarto via the official installer and use `quarto` directly
- [ ] Add VS Code tasks/status bar for common actions
- [ ] Create a `new-post` script/task to scaffold posts

## 9) CI/CD and deployment

- [ ] Bump `actions/upload-pages-artifact` to `@v4`
- [ ] Keep `actions/configure-pages@v4` and `actions/deploy-pages@v4`
- [ ] Ensure `environment: name: github-pages` is present (done)
- [ ] Add cache steps for Quarto/pipx/pixi if beneficial

## 10) Documentation and hygiene

- [ ] Polish `theme-guide.md` (fix markdown lint warnings)
- [ ] Add "How to write a post" authoring guide
- [ ] Add CONTRIBUTING + simple PR checklist (even for solo)

---

## Backlog: content ideas

- [ ] Life After Coding series (career transitions, identity shift)
- [ ] Learning logs (weekly/monthly)
- [ ] Tools I actually use (Quarto, Pixi, VS Code, GitHub Pages)
- [ ] Deep dives (testing, automation, data viz)
- [ ] "Now" page and Projects/Portfolio page

## Quick wins (pick 3–5)

- [ ] Turn on `styles.css` and set `highlight-style: github`
- [ ] Add dark mode pairing (`darkly`)
- [ ] Create a posts listing page and tag pages
- [ ] Add social preview image and Open Graph tags
- [ ] Fix preview warnings and commit workflow bump to `upload-pages-artifact@v4`
