# README

This is my COM 212 paper.

## Quick notes

I'm using Rmarkdown, compiled to latex, using bibtex citations and the 
biblatex library in latex. To achieve this, I'm using zotero, better bibtex 
(don't know if it's actually necessary, I want auto export of citations though).

My header is:

```
---
title: "Annotated Bibliography"
output: 
  pdf_document: 
    keep_tex: yes
    pandoc_args: ["--biblatex"]
bibliography: comPaper1References.bib
header-includes:
  - \PassOptionsToPackage{style=apa}{biblatex}
---
```

I'm knitting to pdf with MikTex. Future me: download MikTex if you're coming back
to latex/etc, it makes it so much easier. I'm using header-includes to specify
apa, but that's kind of an ugly hack. For some reason Rmd/Latex has trouble with
spaces and underscores in filenames, I think because it has to escape stuff for
R and for LaTex? Anyway, just use camelCase and *remember to escape backslashes
if you're using an absolute path on windows*. 

Rmd [docs](https://bookdown.org/yihui/rmarkdown-cookbook/bibliography.html) were
incredibly useful.

I've avoided messing with csl files, biblatex is handling everything here.

To use overleaf, I found out you can add another remote, for example with
`git remote add overleaf <url>` and (assuming it's bare) git pull it into your
repo with `git pull overleaf master --allow-unrelated-histories`.
