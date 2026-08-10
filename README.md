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

CLEAR figures live in `assets/projects/clear/` (~2.7 MB). The six qualitative
rollouts are muted looping MP4s, converted from the original 84×84 GIFs and
encoded at 2x with nearest-neighbour scaling so they stay blocky rather than
smeared. Re-encode with:

    ffmpeg -i in.gif -vf "scale=iw*2:ih*2:flags=neighbor" \
      -c:v libx264 -preset slow -crf 23 -pix_fmt yuv420p \
      -profile:v main -movflags +faststart -an out.mp4

The PALAPA-707 clips are embedded from Google Drive and need no local files. They
render only while those Drive files stay shared publicly ("anyone with the link").
