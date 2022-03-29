# README

This is my COM 212 research paper.

## Quick notes

I'm using Rmarkdown, compiled to latex, using bibtex citations and the
biblatex library in latex. To achieve this, I'm using zotero, better bibtex
(don't know if it's actually necessary, I want auto export of citations though).

My header is:

```
---
title: "Chronemics in CMC"
author: Sean F. O'Donovan
documentclass: apa7
classoption:
  - stu
output:
  pdf_document:
    keep_tex: yes
    template: "template.tex"
    pandoc_args: --biblatex
    include:
      in_header: preamble.tex
  html_document:
    df_print: paged
bibliography: comPaper1References.bib
---
```

I'm knitting to pdf with MikTex. Future me: download MikTex if you're coming back
to latex/etc, it makes it so much easier. I'm using a latex apa7
documentclass with the stu (student) type. For some reason Rmd/Latex has trouble with
spaces and underscores in filenames, I think because it has to escape stuff for
R and for LaTex? Anyway, just use camelCase and *remember to escape backslashes
if you're using an absolute path on windows*.

Rmd [docs](https://bookdown.org/yihui/rmarkdown-cookbook/bibliography.html) were
incredibly useful. Help with using biblatex style without access to the usepackage
statement [here](https://tex.stackexchange.com/questions/264096/set-biblatex-options-after-loading).

I've avoided messing with csl files, biblatex is handling everything here.

To use overleaf, I found out you can add another remote, for example with
`git remote add overleaf <url>` and (assuming it's bare) git pull it into your
repo with `git pull overleaf master --allow-unrelated-histories`.

Pandoc documentation has been helpful too, but it's kind of a rabit hole.
