# gunnxx.github.io

Personal website for Tri Wahyu Guntara. Plain static HTML + CSS, no build step.

- `index.html` — the whole site (styles are inline in `<head>`).
- `assets/photo.jpg` — profile photo. Not committed yet; drop a square headshot here
  (~400×400 or larger). Until it exists, the hero shows a "TWG" initials placeholder.

## Local preview

```
python3 -m http.server 8000
# open http://localhost:8000
```

## Deploy

Push to `main`. GitHub Pages serves a user site from the repository root
(Settings → Pages → Source: `main` / `/root`).

## Editing

Content sections in `index.html`, in order: hero/about, Education, Experience,
Publications, Projects, Scholarships & Awards.
Publications use `pub-label` prefixes — `C` conference, `W` workshop, `P` preprint.
Styles live in `assets/style.css`, shared by every page.

## Project pages

`projects/clear/` and `projects/palapa-707/` are standalone pages sharing
`assets/style.css` with the homepage.

CLEAR figures live in `assets/projects/clear/` (~15 MB, mostly the six
qualitative-rollout GIFs, which are lazy-loaded). The GIFs are 84×84 as authored
and are upscaled with `image-rendering: pixelated`.

The PALAPA-707 clips are embedded from Google Drive and need no local files. They
render only while those Drive files stay shared publicly ("anyone with the link").
