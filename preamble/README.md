# Load Order
  - preamble.sty
    - dependencies.tex
    - styles.tex
    - theorems.tex
    - options.tex
    - ...
    - macros.tex

# File Dependencies
  - preamble.sty: {dependencies.tex, styles.tex, theorems.tex, options.tex}
  - dependencies.tex: {}
  - styles.tex: {dependencies.tex}
  - theorems.tex: {dependencies.tex, styles.tex}
  - options.tex: {dependencies.tex, styles.tex, theorems.tex}
  - ...
  - macros.tex: {dependencies.tex, preamble.tex (body)}

# Package Dependencies
  - preamble.sty:
    - {kvoptions, environ}
  - styles.tex:
    - {tcolorbox (tcbuselibrary{theorems, skins}) }
    - {mdframed}
  - theorems.tex
    - {amsthm}
    - {mdframed}
    - {tcolorbox}
  - options.tex
    - {environ}
    - {amsthm}
    - {mdframed}
    - {tcolorbox}
  - ...
  - macros.tex
    - {amsmath, amsthm, amssymb, amsfonts}
    - {xifthen, xparse, xargs, xintexpr, xfrac, xstring}
    - {dashbox, adjustbox, fancybox}
    - {mathtools, etoolbox}
    - {gensymb, stmaryrd, relsize, bm, dsfont, txfonts}
    - {array}
    - {pgffor}
    - {listings}

# Other Useful Packages
  - {(array), makecell, multirow, tabularx}
  - {enumerate, enumitem}
  - {cancel}
  - {extramarks}
  - {linegoal}
  - {graphicx}
  - {fancyhdr}
  - {longtable}
  - {float}
  - {tikz}
  - {pstricks}
  - ...
  - ? {geometry, booktabs, epsfig, setspace, parskip, bbm, algorithm2e, comment, pdfpages, ulem, hyperref, framed, spverbatim}
