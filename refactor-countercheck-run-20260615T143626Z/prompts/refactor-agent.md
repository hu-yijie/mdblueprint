# Graph Refactor Agent Run

Use `skills/mdblueprint-graph-refactor-review/SKILL.md`.
Knowledge root: `../EconCSLib/docs/knowledge`
Scope mode: `admitted+staged`.
Pass `--include-staged`: `true`.

Write the refactor report to `runs/refactor-countercheck/20260615T143626Z/reports/refactor-report.md`.
Write the dry-run plan to `runs/refactor-countercheck/20260615T143626Z/dry-runs/refactor-plan.yml`.
If no concrete operation survives refinement, write a valid dry-run plan with `operations: []`.
Do not edit admitted or staged knowledge files.
