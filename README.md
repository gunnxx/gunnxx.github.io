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
Publications, Projects, Scholarships & Awards, Skills, Online Certifications.
Publications use `pub-label` prefixes — `C` conference, `W` workshop, `P` preprint.
