# IDPA: «Zwischen Herzmedizin und Computerrevolution» - Zwei Lebenswege im Spiegel ihrer Zeit.

## Autoren
- Peter Ngo
- Alex Uscata

## Ziel
Dieses Repository enthält die gemeinsame IDPA-Arbeit zur historischen Biografie von Dr. Ngô Xuân Sinh und Dr. Urs Hölzle.

Ziel der Arbeit ist die Rekonstruktion ihrer Lebenswege anhand von Interviews, wissenschaftlicher Literatur, Archivmaterialien und weiteren historischen Quellen.
Die Biografien werden in ihren politischen, gesellschaftlichen und technologischen Kontext eingeordnet.

Der Schwerpunkt liegt auf einer wissenschaftlich nachvollziehbaren Arbeitsweise mit GitHub, LaTeX und einer strukturierten Quellenverwaltung.

## Projektstruktur(In Etwa)
```
idpa-biographie/
│
├── .gitignore
├── README.md
├── main.tex
├── references.bib
├── config.tex
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
│   └── consent/  # Nur lokal, nicht comitten :) 
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
└── translations/
    ├── vietnamesisch/
    ├── deutsch/
    └── russisch/
```
## Kapitel (In Etwa)

- `01_einleitung.tex`
- `02_historischer_kontext.tex`
- `03_biographie.tex`
- `04_analyse.tex`
- `05_fazit.tex`
- `appendix.tex`

## Zusammenarbeit

- Jeder arbeitet möglichst in seinem eigenen Kapitel.
- Bilder kommen in den images-Ordner.
- Literatur wird ausschließlich in references.bib eingetragen.
- Änderungen werden über GitHub synchronisiert.

## Git

Repository klonen
```bash
# Mit HTTPS
git clone https://github.com/stoicfist/IDPA.git

# Mit SSH
git clone git@github.com:stoicfist/IDPA.git
```

Änderungen holen
```bash
git pull
```

Änderungen speichern (siehe: [Conventional Commits Cheat Sheet](https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13))

```bash
git add .
git commit -m "<type>(scope): ..." # scope ist optional 
```

Änderungen hochladen
```bash
git push
```

## LaTeX-Grundlagen

### Kapitel einbinden

Neue Kapitel werden in `main.tex` mit `\input` eingebunden.

```latex
\input{chapters/01_einleitung}
\input{chapters/02_historischer_kontext}
\input{chapters/03_biographie}
\input{chapters/04_analyse}
\input{chapters/05_fazit}
```

---

### Kapitel erstellen

Ein neues Kapitel beginnt beispielsweise so:

```latex
\section{Historischer Kontext}

Hier beginnt der Fliesstext...
```

---

### Unterkapitel

```latex
\subsection{Kindheit}

Text...

\subsubsection{Schulzeit}

Weiterer Text...
```

---

### Bilder einfügen

Bilder gehören in den Ordner `images/`.

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{images/personen/v_n.jpg}
    \caption{Dr. Vorname Nachname}
    \label{fig:x}
\end{figure}
```

Auf Bilder verweisen:

```latex
Wie in Abbildung~\ref{fig:x} zu sehen ist...
```

---

### Quellen zitieren (Nach APA)

Literatur wird in `references.bib` eingetragen.

Im Text:

```latex
\cite{xy2026}
```

Literaturverzeichnis:

```latex
\printbibliography
```

---

### Fussnoten

```latex
Dies ist ein Beispiel.\footnote{Beispiel einer Fussnote.}
```

---

### Listen

```latex
\begin{itemize}
    \item Punkt 1
    \item Punkt 2
\end{itemize}
```

Nummeriert:

```latex
\begin{enumerate}
    \item Erster Punkt
    \item Zweiter Punkt
\end{enumerate}
```

---

### Tabellen

```latex
\begin{tabular}{ll}
Name & Beruf \\
Ngô Xuân Sinh & Arzt \\
Urs Hölzle & Informatiker
\end{tabular}
```

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
