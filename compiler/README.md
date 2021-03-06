# mKLX - Befehlsübersicht

In mKLX gibt es oft mehrere Wege zum Ziel. So gibt es für mehrere Ausdrücke eine symbolische und eine geschwätzige Variante. Man kann diese auch mischen, was aber zulasten der Übersichtlichkeit geht. Alle **Schlüsselwörter** in mKLX beginnen mit einem Großbuchstaben. Ausdrücke enden mit einem Semikolon. 

## KLXe

Bezeichnung | symbolisch | geschwätzig | ggf. Beschreibung
----- | ----- | ----- | ----- 
Kreis | `●` oder `·` | Kreis | 
Dreie | `▲` oder `<|` | Dreie | Standard-Dreieck, gleichseitig
Linie | `▂` oder `_` | Linie | 
Quadrat | `▇` oder `#` | Quadr | 

### Optionen für KLXe

Für KLXe gibt es verschiedene Optionen, die Transformationen und Farben ermöglichen. Sie werden in eckige Klammern vor den Klecks geschrieben, z.B.: `[Koord 500,200] #;`

#### Transformationen

Bezeichnung | Befehl | ggf. Beschreibung
----- | ----- | ----- 
Drehen | `Drehe x` | [0; 360]
Skalieren | `Skali x`, oder `Skali x, y` | [0.0; unendlich], 1 entspricht der "normalen" Größe, also 100%
Koordinaten | `Koord x, y` | x, y beliebig; grundsätzlich abhängig von Seitengröße
Liniendicke | `Ldick x` | x, beliebig
Ausfüllen | `Voll` | Füllt KLXe aus
Nur Rand | `Sanft` | KLX nur mit Rand ohne Füllung

#### Farben
Bezeichnung | Befehl | ggf. Beschreibung
----- | ----- | ----- 
Beliebige Farben | `Farbe x, y, z` oder `Farbe Farbname` | x, y, z aus [0; 255], Farbnamen: `Rot, Blau, Gruen, Gelb, Minion, Orang, Lila, Pink, Schwa, Braun, Grau, Weiß`


## Kontrollstrukturen
Bezeichnung | Befehl | ggf. Beschreibung
----- | ----- | ----- 
Wenn-Dann | `Wenn (bool) Dann ...` oder `??(bool) >> ...` | Bool'sche Ausdrücke stehen **immer** in runden Klammern. `...` steht für einen oder mehrere Ausdrücke. Bei mehreren werden geschweifte Klammern benötigt. 
Wenn-Danndann-Sonst | `Wenn (bool) Danndann ... : ...` oder `??(bool) >>>> ... : ...` | s.o. Wichtig: Der Dann-Ausdruck wird bei Wenn-Danndann-Sonst verdoppelt. 
Wiederholen | `Wdh x >> ...` oder `» x >> ...` | x beliebige Ganzzahl; entspricht der Anzahl der Wiederholungen des/der nachfolgenden Ausdrucks/Ausdrücke. 
Während-Schleife | `[[bool]] >> ...` | Führt einen oder mehrere Ausdrücke (`...`) solange aus, wie die Bedingung (bool) erfüllt wird. Bei mehreren -> geschweifte Klammern

## Kommentare

Zeilenkommentare werden mit `//` eingeleitet. Blockkommentare gibt es nicht. 

## Prozeduren

Auch für Prozeduren gibt es zwei Schreibvarianten:

1. `Proz prozedurName(param1, param2) >> { ... }` 
1. `::prozedurName(param1, param2) >> { ... }` 

Aufgerufen werden können Prozeduren beispielsweise mit dem Ausdruck `prozedurName(1, 2);`

## Schlüsselwörter und weitere Zeichen

1. Variablen werden mit dem Schlüsselwort `Dekla` deklariert und in einem extra Schritt initialisiert. 
1. Für bool'sche Vergleiche stehen `<, <=, >, >=, <> bzw. !=, ==, &&, ||` zur Verfügung. 
1. Für die Aritmethik stehen neben Ganzzahlen (z.B. 1, 5, 7) und Kommazahlen (z.B. 0.1, 2.2, 9.13) auch die Zeichen `+, -, *, /, ^, %` in der aus anderen Sprachen bekannten Verwendung zur Verfügung. 


