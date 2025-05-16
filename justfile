set windows-shell := ['powershell', '-Command']

no-brand: no-brand-html no-brand-typst
no-brand-html:
  quarto render report.qmd --profile nobrand --to html
no-brand-typst:
  quarto render report.qmd --profile nobrand --to typst

with-brand: with-brand-html with-brand-typst
with-brand-html:
  quarto render report.qmd --to html
with-brand-typst:
  quarto render report.qmd --to typst