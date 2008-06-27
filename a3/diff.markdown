1. Unser Datenbankschema beschreibt Käfige und ihren Ort.  Dies wird vom 
   BAER-Tierschema nicht abgedeckt.

   (Wir hatten ein GPS-Gerät dabei und wollten es benutzen)


2. Unser Schema modelliert Gruppen von Tieren einer Art (damit kann man 
   abbilden, dass eine Tierart in einem Zoo in mehreren Käfigen beobachtbar ist)

   (das resultiert aus dem ersten Punkt: da wir Gehege beschreiben 
   modellieren wir auch die Relation von Tieren zu Gehegen -- Das ist bei Vögeln
   naheliegend, da sie oft in Schwärmen auftreten)


3. Unser Datenbankschema ermöglicht Schildtexte in unterschiedlichen 
   Sprachen zu speichern.  Es wäre dabei möglich nachzuverfolgen von 
   welcher Originalversion ein Text übersetzt wurde.

   (Das resultiert aus der Aufgabenstellung, nach nach der wir darauf achten
   sollten ein mehrsprachiges Informationssystem zu ermöglichen)

  
4. Unser Datenbankschema ermöglicht die Aufnahme von Bildern der Tiere 
   Tierarten zusätzlich zu den Beschreibungen.


5. Individuen sind bei unserem Schema weniger prominent (bei Vögeln wird der 
   Geburtsort usw. nicht erfasst und sie haben keine Namen)
   
   Auf unseren Schildern war bevorzugte Narung nicht angegeben.
   

6. Wir erfassen das Geschlecht der Individuen nicht.  Die ISMALE-Spalte im Baer Schema
   ist seltsam, da es nicht für alle Tiere ausreicht (Frösche haben zB kein definiertes Geschlecht)
   
   HL-7 kennt zum Beispiel sechs verschiedene Werte:
   
     * F - Female
     * M - Male
     * O - Other
     * U - Unknown
     * A - Ambiguous
     * N - Not applicable
     
---

# Fixes und Fehler im SQL-Schema

* Wir haben in ANIMALSYSTEMTYPE "Unterfamilie" und "Gattung" eingefügt.  Entenvögel (ID=146) waren falsch als Ordnung klassifiziert.

