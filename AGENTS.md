# AGENTS.md

## What this repo is

- Educational course content (DEDP, ETTI/TUIASI): lecture slides, labs, seminars, sample exams. Not an app or library.
- No root package manifest, build/test/lint scripts, or CI. npm commands are not project verification; do not run or rely on them.

## Layout (only boundaries that matter)

- `Lectures/` slides, `_quarto.yml`, Codebraid/Pandoc makefile
- `Labs/` lab sheets, `.mat`/image datasets, Pandoc makefile
- `Seminars/<year_year>/` one folder per academic year
- `SampleExam/` sample exam sheets
- `Work/` student-work drop folders; leave alone unless asked

## Source authority

- Each makefile maps the local `.md` files to `.pdf`/`.odt`/`.tex`. Treat those outputs as generated.
- `.html` files with Quarto metadata (e.g. `Labs/Lab*.html`) are renders of the sibling `.qmd`.
- When `.qmd` and `.ipynb` coexist (Labs), repo config does not establish a global authoritative source. Inspect the specific document before editing either, and say which one you chose.
- `.mlx`, standalone `.tex`, `.pdf`, `.ipynb` outside these patterns have unresolved provenance. Do not assume they are generated.
- Datasets/assets (`.mat`, `.bmp`, `.jpg`, `.tiff`, `.csv`, video) are source material. Never regenerate, convert, or "optimize" them.

## Seminars

- Year folders (`2017_2018` through `2024_2025`) are independent historical snapshots.
- No `2025_2026` or `2026_2027` seminar folder exists; do not invent one.
- Do not propagate edits across year folders unless explicitly requested.

## Verified commands (run only the one matching the file you changed)

```bash
make -n -B -C Lectures 00_Introduction.pdf      # dry-run preview, use first
make -C Lectures 00_Introduction.pdf
make -C Labs Lab7.pdf
make -C SampleExam SampleExamSheet.pdf
make -C Seminars/2024_2025 Seminar1.pdf
```

- Lecture make uses Codebraid + Pandoc, prepending `slides_header.md` and `--include-in-header macros.md`. The others use plain Pandoc.
- Avoid bare `make`/`make all`: rebuilds every document in that directory.

## Hazards

- `make clean` deletes the generated PDF/ODT/TEX outputs, many of which are committed to git. Never use it for routine verification.
- `Lectures/_quarto.yml` lists `01_RandomSignals.qmd`, but only `01_RandomSignals.md` exists. Do not run a project-wide Quarto render of `Lectures/` until the config is intentionally reconciled.
- Lab QMD behavior: all five top-level `Labs/*.qmd` set `jupyter: python3`, `freeze: true`, `eval: false`, yet the examples are Matlab. Rendering them does not execute or validate any Matlab code. A focused render like `quarto render Labs/Lab3_Decision.qmd` is acceptable only after deciding that document's authoritative source.

## Verification expectations

- After editing a document, render only that document (commands above) and inspect the resulting diff.
- For Matlab scripts (`.m`, `.mlx`), run them from their containing directory: they load colocated `.mat`/image files by relative path, so running from elsewhere breaks the loads.
