# Sample R Project — Git/GitHub Tutorial

A small, realistic R project for practicing Git inside RStudio.

## What's in here

| File/Folder            | Purpose                                                   |
|-------------------------|------------------------------------------------------------|
| `sample-r-project.Rproj` | Opens this folder as an RStudio Project                   |
| `data/sales_sample.csv`  | Small dummy dataset to analyze                             |
| `scripts/analysis.R`     | Main analysis script — this is what people will edit       |
| `.gitignore`             | Tells Git to ignore `.RData`, `.Rhistory`, rendered output, etc. |
| `README.md`              | This file                                                   |

## How to use this for the tutorial

1. Push this folder to a new GitHub repo (you do this once, beforehand).
2. Each participant: **File → New Project → Version Control → Git** in RStudio, paste the repo URL.
3. Open `scripts/analysis.R`.
4. Each person makes a small edit — e.g. add a "revenue by product" summary (see the `TODO` comment at the bottom of the script).
5. Save the file → open the **Git tab** in RStudio → see the change listed → stage it → write a commit message → commit → push.
6. On GitHub.com, open a Pull Request for the change.

## Why the `.gitignore` matters

R and RStudio generate files you should never commit:
- `.RData` / `.Rhistory` — your local session state, not your code
- `.Rproj.user/` — RStudio's own local settings folder
- Rendered `.html`/`.pdf` from R Markdown — regenerate these, don't version them

Committing these bloats the repo and causes pointless merge conflicts.
