# Glosar și stil pentru traducerile în română

Referință pentru traducerea laboratoarelor și a quiz-urilor DEDP/DEPI.
Destinațiile externe se identifică în `../../COURSES.md`, relativ la
`Labs/`. Acest fișier se află în afara repo-ului public. Nu includeți căi
locale absolute în acest glosar.
Instrucțiunile explicite pentru un material au prioritate. Păstrați sensul
matematic, notațiile, valorile numerice și codul executabil.

## Terminologie

| Termen în engleză | Formulare preferată în română | Observații |
|---|---|---|
| DEDP | DEPI | Inclusiv în titluri, subtitluri și categorii Moodle. |
| probability density function (PDF) | funcția densitate de probabilitate | Denumirea formală, la introducerea conceptului; nu păstrați abrevierea engleză PDF. |
| probability density / PDF, în context | densitatea de probabilitate | În cerințe și referiri repetate, preferați forma scurtă și naturală: „Valoarea densității de probabilitate w_A(5)”, nu „Valoarea funcției densitate de probabilitate…”. Denumirea formală rămâne validă. |
| cumulative distribution function (CDF) | funcția de repartiție (FR) | Ulterior se poate folosi FR. |
| standard deviation | deviația standard | Nu „abaterea standard”. |
| variance | varianță | Nu „dispersie”; flexionați firesc: „varianța”. |
| histogram bins | intervale | Preferat în cerințe: „histogramă cu 18 intervale”, nu „cu 18 clase”. Precizați că sunt intervalele histogramei când contextul este ambiguu. |
| uniform samples on [a,b] | valori uniforme în intervalul [a,b] | Preferat față de „valori uniforme pe [a,b]”. |
| theoretical density height | înălțimea densității de probabilitate teoretice | Nu eliminați „de probabilitate” dacă formularea ar deveni neclară. |

Abrevierea PDF pentru **formatul de fișier** și valoarea Matlab `'pdf'` nu se
traduc. Numele funcțiilor, de exemplu `myCDF`, rămân neschimbate.

## Stil

- **Obiectiv:** formulare impersonală, nominală: „Generarea de eșantioane…”,
  nu „Generați eșantioane…”. Această regulă nu se aplică automat exercițiilor.
- **Cerințe:** directe și concise: „Calculați…”, „Care comandă generează…?”.
- **Date teoretice:** formulați ipoteza despre distribuție, nu despre un proces
  de generare a unor valori, dacă se cere o proprietate teoretică.
  - Preferat: „Fie distribuția uniformă pe intervalul [-5, -0.5]. Calculați
    înălțimea densității de probabilitate teoretice.”
  - De evitat în acest context: „Se generează valori uniforme pe [-5, -0.5].
    Calculați înălțimea densității teoretice.”
- Folosiți „în intervalul…” în cerințele despre valori generate; nu traduceți
  mecanic prepoziția engleză *on* prin „pe”. „Distribuție pe intervalul…”
  rămâne o formulare firească.
- Folosiți diacritice în text. Păstrați codul, separatorul zecimal din cod/XML,
  răspunsurile și toleranțele numerice.

## Numele fișierelor

Traduceți componenta descriptivă, folosind nume fără diacritice, dar păstrați
markerii **`quiz`** și **`READABLE`**:

- `Lab2_DistributiaUniforma.qmd`
- `Lab2_DistributiaUniforma_quiz.xml`
- `Lab2_DistributiaUniforma_quiz_READABLE.md`

Actualizați și referințele interne la fișiere când acestea sunt redenumite.

## Proveniență și limitele comparației

Preferințele de mai sus combină instrucțiunile explicite ale instructorului
cu editările manuale observate la 7 octombrie 2026 în:

`Lab2_DistributiaUniforma_quiz_READABLE.md`, în directorul privat de
laboratoare în română identificat în `COURSES.md`

Diferențe observate față de traducerea inițială:

- întrebările 1–4: „pe [a,b]” → „în intervalul [a,b]”;
- întrebările 9–12: „clase” → „intervale” pentru histogramă;
- întrebările 13–16: „Se generează valori…” → „Fie distribuția…” și
  „densității teoretice” → „densității de probabilitate teoretice”;
- întrebările 21–23 și distractorii întrebărilor 21–24: simplificarea
  „funcția densitate de probabilitate” → „densitatea de probabilitate”.
  Întrebarea 24 păstrează denumirea formală în cerință; nu se deduce o interdicție
  absolută a acesteia.

Fișierele Lab2 nu mai erau prezente în `Labs/Ro/` la momentul comparației.
Textul inițial al quiz-ului a fost reconstituit în `/tmp/` din scriptul de
traducere păstrat în aceeași sesiune și comparat cu fișierul actual din
directorul privat de laboratoare în română. Nu a fost disponibilă o comparație a QMD-ului românesc;
regula pentru Obiectiv provine din instrucțiunea explicită a instructorului.
Referința rămasă la `_test.xml` în introducerea READABLE nu este o preferință
de traducere: regula explicită pentru nume este păstrarea lui `quiz`.
