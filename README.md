# Precision Point Consulting (PPC) — Static Site

This repository contains a small single-page static website for Precision Point Consulting (PPC) built with HTML and Tailwind via CDN.

Quick start
-----------
Install dependencies and build the production CSS, then open `index.html`:

```bash
npm install
npm run build
open index.html
```

For development (live rebuild of Tailwind CSS):

```bash
npm install
npm run dev:css
```

What is included
-----------------
- `index.html` — single-page app, job listings loaded from `jobs.json`, theme toggles, and Apply modal form.
- `jobs.json` — job listing source (title, description, image).


Notes
-----
- This is a static demo. The Apply and Contact forms are client-only and do not submit to a backend. Integrate a server or form endpoint to persist applications.
- Images use Unsplash links; replace with local assets if desired.

What I changed
--------------
- Replaced CDN Tailwind with a local build pipeline using `tailwindcss` + `postcss`.
- Source CSS is in `src/styles.css`; built output is `dist/styles.css`.

If you want, I can:
- Add a simple Node/Express endpoint to accept form submissions.
- Add a tiny static server script to serve the `dist/` folder for testing.
