# gunnxx.github.io

Personal website for Tri Wahyu Guntara. Plain static HTML + CSS, no build step.

- `index.html` — the whole site.
- `assets/photo.jpg` — profile photo, square (~400×400 or larger). Swap the file to
  change it. If it fails to load, the hero falls back to a "TWG" initials placeholder.
- `resume.html` / `resume.pdf` — the print CV. See "Resume" below.

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

## Resume

`resume.html` is a print-first, two-page CV carrying the same content as the
homepage — it has its own inline stylesheet (A4 `@page`, ~9.6pt body) and does
not load `assets/style.css`. Edit the HTML, then regenerate the PDF:

    scripts/build-resume.sh

The script serves the repo on a scratch port and drives headless Chrome
(`--print-to-pdf`), because Chrome will not load the remote webfonts over
`file://`. No LaTeX or pandoc needed. Links stay clickable in the PDF.

`resume.html` duplicates the CV content rather than generating it from
`index.html`, so update both when experience or publications change.

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
