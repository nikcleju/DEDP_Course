# AGENTS.md

## What this repo is

- Educational course content (DEDP, ETTI/TUIASI): lecture slides, labs, seminars, sample exams. Not an app or library.
- No root package manifest, build/test/lint scripts, or CI. npm commands are not project verification; do not run or rely on them.

## Layout (only boundaries that matter)

- `Lectures/` Quarto slide sources and `_quarto.yml`; the makefile is legacy
- `Labs/` lab sheets, `.mat`/image datasets, incremental Quarto `Makefile`
- `Seminars/<year_year>/` one folder per academic year
- `SampleExam/` sample exam sheets
- `Work/` student-work drop folders; leave alone unless asked

## Source authority

- Legacy makefiles map local `.md` files to `.pdf`/`.odt`/`.tex`. Treat those outputs as generated. `Labs/Makefile` renders current `.qmd` sources with Quarto.
- Current lecture sources are `.qmd` files rendered with Quarto; do not use the legacy lecture makefile for them.
- `.html` files with Quarto metadata (e.g. `Labs/Lab*.html`) are renders of the sibling `.qmd`.
- When `.qmd` and `.ipynb` coexist (Labs), repo config does not establish a global authoritative source. Inspect the specific document before editing either, and say which one you chose.
- `.mlx`, standalone `.tex`, `.pdf`, `.ipynb` outside these patterns have unresolved provenance. Do not assume they are generated.
- Datasets/assets (`.mat`, `.bmp`, `.jpg`, `.tiff`, `.csv`, video) are source material. Never regenerate, convert, or "optimize" them.

## Lab authoring

- Consult `../COURSES.md` (relative to the repository root) for the local
  course-folder map and private material destinations. It lives outside this
  public repository; do not copy its local paths into tracked guides.
- Use repo-relative paths for repository files and describe external locations
  by their role, resolved through `COURSES.md`. If the map is unavailable,
  request the location rather than guessing a destination.

- Before creating or revising labs, read `Labs/AUTHORING.md`.
- For Romanian translations, also read `Labs/GLOSAR_RO.md`. Save translated
  QMDs in the Romanian course’s labs folder and quiz XML/READABLE pairs in
  its private labs folder, as mapped by `COURSES.md`; do not default to `Labs/Ro/`.
- Leave `LabsOld/` unchanged unless explicitly asked; it is historical reference material.

## Seminars

- Year folders (`2017_2018` through `2024_2025`) are independent historical snapshots.
- No `2025_2026` or `2026_2027` seminar folder exists; do not invent one.
- Do not propagate edits across year folders unless explicitly requested.

## Focused rendering commands (run only the one matching the file you changed)

```bash
cd Lectures && quarto render 00_Introduction.qmd --to beamer
make -C Labs SOURCES=Lab3_NormalDistribution.qmd TO=pdf
make -C SampleExam SampleExamSheet.pdf
make -C Seminars/2024_2025 Seminar1.pdf
```

- Lectures use Quarto. `Lectures/_quarto.yml` configures Beamer with `pdflatex` and `beamer-header.tex`; inspect document-level settings before rendering. Current labs also use Quarto; sample exams and seminars use plain Pandoc.
- `Labs/Makefile` uses actual output timestamps: missing or outdated outputs trigger rendering. `TO=pdf` selects PDF only; the default `TO=all` groups the current HTML/PDF/notebook outputs into one render per source (GNU Make 4.3+). Asset changes require `make -B`; prefer `SOURCES=filename.qmd` to limit that force-render. If a document changes its declared formats or output filename, update the targets accordingly.
- Avoid bare `make`/`make all` for routine verification: legacy directories rebuild every document; Labs may render multiple sources whose outputs are missing or outdated.

## Hazards

- `make clean` deletes the generated PDF/ODT/TEX outputs, many of which are committed to git. Never use it for routine verification.
- Avoid project-wide Quarto renders for routine verification; render only the lecture being edited.
- Lab QMD behavior: inspect the document's execution settings. The rewritten labs use `jupyter: python3`, `freeze: true`, `eval: false`, yet the examples are Matlab. Rendering them does not execute or validate any Matlab code. A focused render is acceptable only after deciding that document's authoritative source.

## Verification expectations

- After editing a document, render only that document (commands above) and inspect the resulting diff, unless the user asks to handle rendering themselves. For the current lab rewrite, edit the QMD only and leave rendering to the user unless asked otherwise. Repository guidance files do not need rendering.
- For Matlab scripts (`.m`, `.mlx`), run them from their containing directory: they load colocated `.mat`/image files by relative path, so running from elsewhere breaks the loads.
