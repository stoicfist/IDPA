# =====================================================================
# latexmkrc konfiguration für die IDPA
# =====================================================================

@default_files = ('main.tex');

# PDF mit pdflatex erzeugen
$pdf_mode = 1;

# Bibliographie über Biber
$bibtex = 'biber %O %B';

# pdflatex im Nonstop-Modus ausführen
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Temporäre Dateien bereinigen
$clean_ext .= ' acn acr alg glg glo gls ist xdy run.xml bbl bcf';
