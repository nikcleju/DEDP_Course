# Writing and revising labs

These conventions capture the preferences established while rewriting Labs 1–3.
Explicit instructions for a particular lab take precedence.

## Before writing

- Read `Lab1_IntroMatlab.qmd` and `Lab2_Distributions.qmd` for structure and tone,
  and the preceding lab for assumed knowledge.
- Consult `../LabsOld/ListOfNewLabs.txt` for the planned sequence and the relevant
  old lab for reusable material. Leave historical files unchanged.
- Inspect the current file before each revision: the instructor may have edited
  it since the previous turn. Preserve unrelated edits.
- For a new rewritten lab, use its `.qmd` as the authoritative source and state
  that choice. For an existing document, inspect its provenance first.
- Aim for a two-hour session. Keep later applications in their planned labs;
  for example, Lab 3 introduces averages, not the later 3-sigma and Otsu labs.

## Document structure

Copy the YAML conventions from Labs 1 and 2, updating the title and lab number.
Keep the Matlab examples non-executing (`eval: false`); the Python kernel setting
does not make them executable Matlab code.

Use these top-level sections:

1. **Objective** — a short statement of what students will learn to do.
2. **Theoretical aspects** — definitions, formulas, and necessary Matlab tools.
   Finish with **Summary: functions and notation you should know**, as a table.
3. **Exercises** — numbered exercises with lettered tasks.
4. **Final questions** — a small selection of interesting extensions or quirks.

Supplementary exercises are optional, not a required section.

## Theory and notation

- Keep theory general. Voting centres, ECG records, and other applications belong
  in the exercises, not in the definitions of statistical or temporal averages.
- Prefer `$w_A(x)$` for a probability density, with integration variable `x`.
- Distinguish ensemble/statistical averages from temporal averages, theoretical
  quantities from estimates, and variance normalization by `N` from `N-1`.
- Explain new functions in the theoretical part and include them in the summary
  table. For example, explain both `load(filename)` and `D = load(filename)`,
  structure-field access, and the possibility of overwriting Workspace variables.
- Include only theory needed for the tasks; avoid repeating the lecture.

## Exercise style

- Be concise and direct: “Generate”, “Compute”, “Plot”, “Compare”, “Verify”.
  Avoid long explanations, unnecessary caveats, and repeated instructions.
- Give each task a clear action and expected result: vector length, matrix
  dimension, plot axes, units, or quantity to compare, where relevant.
- Build on earlier labs. For normal samples, have students use `randn()` with
  scaling and shifting learned in Lab 2 rather than supplying the full solution.
- Provide minimal setup code when necessary to load or access data. Do not turn
  the lab sheet into a worked solution; use short hints for unfamiliar steps.
- Where useful, ask for a prediction before checking it numerically.
- Start with one signal or vector before moving to an entire matrix. For a
  supplementary identity check, prefer the first signal `s` over the full matrix.
- For matrix operations, specify which dimension is reduced and the shape of the
  result. Do not rely on an ambiguous “mean of the signals”.

## Data and numerical checks

- Preserve datasets unchanged. Reuse existing real data unless a change is
  requested; do not introduce a new source just for novelty.
- Inspect actual variable names, types, dimensions, and signal orientation before
  writing instructions. Do not infer them from an old worksheet.
- Example: `ECG_test.mat` contains `test` of size **256 × 80**: columns are signals,
  rows are sample indices. Reducing dimension 1 gives 80 temporal statistics;
  reducing dimension 2 gives 256 across-record statistics.
- Check integer conversions and element-wise operations where needed, and make
  variance/std normalization explicit when verifying an identity.
- If checking Matlab code, run it from the dataset's directory. Octave checks can
  be useful, but do not claim they establish full Matlab compatibility.

## Final questions

- Prefer about four strong questions over a longer repetitive list.
- Ask about counterexamples, invariances, information lost by a statistic, or
  changes in the meaning of an average—not simple recall of definitions.
- Examples from Lab 3: shuffling samples without changing mean/variance; zero DC
  component versus nonzero average power; splitting a voting centre and changing
  an unweighted mean; shifting records and changing their ensemble mean signal.

## Editing and verification

- Work on the authoritative QMD only. The instructor currently handles rendering;
  do not update HTML, PDF, or notebooks unless asked.
- Review the source diff for formulas, task numbering, dimensions, Markdown
  indentation, and consistency with previous labs.
- Rendering, if later requested, must be focused on the single lab. It does not
  validate the Matlab examples because execution is disabled.
- Keep the completion message short: identify what changed and any checks or
  limitations. Do not modify unrelated course materials.
