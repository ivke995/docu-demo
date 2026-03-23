# Architecture

- Framework: Docusaurus 3 (React).
- Entry points:
  - `src/pages/` maps to routes.
  - `docs/` is rendered by the docs plugin.
  - `blog/` is rendered by the blog plugin.
- Assets: `static/` is served as static files.
- Styling: CSS modules (e.g., `src/pages/index.module.css`) plus global overrides in `src/css/custom.css`.

The site is statically built via `docusaurus build`.
