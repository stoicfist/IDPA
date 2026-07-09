# IDPA: «Zwischen Herzmedizin und Computerrevolution» - Zwei Lebenswege im Spiegel ihrer Zeit.

## Autoren
- Peter Ngo
- Alex Uscata

## Ziel
Dieses Repository enthält die gemeinsame IDPA-Arbeit zur historischen Biografie von Dr. Ngô Xuân Sinh und Urs Hölzle.

Ziel der Arbeit ist die Rekonstruktion ihrer Lebenswege anhand von Interviews, wissenschaftlicher Literatur, Archivmaterialien und weiteren historischen Quellen.
Die Biografien werden in ihren politischen, gesellschaftlichen und technologischen Kontext eingeordnet.

Der Schwerpunkt liegt auf einer wissenschaftlich nachvollziehbaren Arbeitsweise mit GitHub, LaTeX und einer strukturierten Quellenverwaltung.

## Projektstruktur

idpa-biographie/
│
├── .gitignore
├── README.md
├── main.tex
├── references.bib
├── latexmkrc
│
├── chapters/
│   ├── 01_einleitung.tex
│   ├── 02_historischer_kontext.tex
│   ├── 03_biographie.tex
│   ├── 04_analyse.tex
│   ├── 05_fazit.tex
│   └── appendix.tex
│
├── images/
│   ├── personen/
│   ├── dokumente/
│   ├── urkunden/
│   ├── karten/
│   └── diagramme/
│
├── interviews/
│   ├── audio/
│   │   ├── interview_01.mp3
│   │   └── interview_02.wav
│   │
│   ├── transcript/
│   │   ├── interview_01_vi.tex
│   │   ├── interview_01_de.tex
│   │   ├── interview_02_vi.tex
│   │   └── interview_02_de.tex
│   │
│   └── consent/
│       └── einverstaendnis.pdf
│
├── sources/
│   ├── archiv/
│   ├── literatur/
│   ├── zeitungsartikel/
│   ├── web/
│   └── fotos_original/
│
├── appendix/
│   ├── dokumente/
│   ├── scans/
│   ├── tabellen/
│   └── interviewauszuege/
│
├── translations/
│   ├── vietnamesisch/
│   ├── deutsch/
│   └── russisch/
│
└── build/
    ├── main.pdf
    ├── aux/
    └── logs/

## Kapitel

01 Einleitung
02 Historischer Kontext
03 Biographie
04 Analyse
05 Fazit
Appendix

## Zusammenarbeit

- Jeder arbeitet möglichst in seinem eigenen Kapitel.
- Bilder kommen in den images-Ordner.
- Literatur wird ausschließlich in references.bib eingetragen.
- Änderungen werden über GitHub synchronisiert.

## Git

Repository klonen

git clone https://github.com/stoicfist/IDPA.git

Änderungen holen

git pull

Änderungen speichern

git add .
git commit -m "..."

Änderungen hochladen

git push

## LaTeX kompilieren

### PDFLaTeX

```bash
latexmk -pdf main.tex
```

Zum Bereinigen der Hilfsdateien:

```bash
latexmk -c
```

## Regeln

- Keine Dateien direkt im Root-Ordner ablegen.
- Kapitel nur im chapters-Ordner.
- Bilder ausschließlich unter images/.
- Quellen nur über BibLaTeX einfügen.
- Keine Leerzeichen in Dateinamen.
- Dateinamen klein schreiben.
