--  zusätzliche Tierartentypen

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('6', 'Tiergattung')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('7', 'Tierunterfamilie')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('8', 'Tierstamm')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('9', 'Tierabteilung')


-- Nachtreiher

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1000', '119', '7', 'Nachtreiher', 'Nycticoracinae')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, BINOMIALNAME) VALUES ('1001', '1000', '6', 'Nycticorax')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1002', '1001', '4', 'Nachtreiher', 'Nycticorax nycticorax')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1000', '1', '1002')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1000', 'Weltweit in Unterarten in tropischen und gemäßigten Zonen verbreitet. Etwa 60cm groß und bis 800g schwer. Lebensraum stets in Wassernähe. Geschlechter gleich gefärbt.', 'Koloniebrüter. In einigen Regionen Annsammlungen bis 2500 Nester und 5000-6000 Nester in Malysia. Erbeutet Insekten, Spinnen, Mollusken, Amphibien, Reptilien, Fische und Kleinsäuger. 3-5 Eier, die überwiegend vom Weibchen etwa 25 Tage bebrütet werden. Junge mit 6 Wochen selbständig.', 'Amerika, Afrika, Eurasien', '1000', '0', '0')


-- Magellan Dampfschiffente

-- FIX: Entenvögel sind eine Familie, keine Ordnung
UPDATE "GRP_SCHILD_6"."TBLANIMALSYSTEM" SET PARENT_ID = '129', TBLANIMALSYSTEMTYPE_ID = '3' WHERE ROWID = 'AAATu8AAEAAAKVvACV' AND ORA_ROWSCN = '32254273'
UPDATE "GRP_SCHILD_6"."TBLANIMALSYSTEM" SET TBLANIMALSYSTEMTYPE_ID = '7' WHERE ROWID = 'AAATu8AAEAAAKVvACW' AND ORA_ROWSCN = '32238523'
UPDATE "GRP_SCHILD_6"."TBLANIMALSYSTEM" SET TBLANIMALSYSTEMTYPE_ID = '7' WHERE ROWID = 'AAATu8AAEAAAKVvACZ' AND ORA_ROWSCN = '32238523'
UPDATE "GRP_SCHILD_6"."TBLANIMALSYSTEM" SET TBLANIMALSYSTEMTYPE_ID = '7' WHERE ROWID = 'AAATu8AAEAAAKVvACb' AND ORA_ROWSCN = '32238523'
UPDATE "GRP_SCHILD_6"."TBLANIMALSYSTEM" SET TBLANIMALSYSTEMTYPE_ID = '7' WHERE ROWID = 'AAATu8AAEAAAKVvACf' AND ORA_ROWSCN = '32238523'
UPDATE "GRP_SCHILD_6"."TBLANIMALSYSTEM" SET TBLANIMALSYSTEMTYPE_ID = '7' WHERE ROWID = 'AAATu8AAEAAAKVvACj' AND ORA_ROWSCN = '32238523'
-- END FIX

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1004', '160', '6', 'Dampfschiffenten', 'Tachyeres')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1005', '1004', '4', 'Magellan-Dampfschiffente', 'Tachyeres pteneres')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1001', '1', '1005')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1001', 'Bei einer Körpergröße von 74-84cm wird ein Gewicht von 3600-6100g erreicht. Weibchen sind kleiner als Erpel. Flugunfähig.', 'Lebt paarweise an der felsigen Küste. Ernährt sich überwiegend von Muscheln und Krebsen, die tauchend erbeutet werden. Brutzeit im September/Oktober. Nest in Wassernähe. 5-8 Eier.', 'Südamerika, Feuerland', '1001', '0', '0')


-- Saruskranich

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1006', '259', '3', 'Kraniche', 'Gruidae')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1007', '1006', '7', 'Echte Kraniche', 'Gruinae')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, BINOMIALNAME) VALUES ('1008', '1007', '6', 'Grus')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1009', '1008', '4', 'Saruskranich', 'Grus antigone')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1002', '1', '1009')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1002', 'Mit bis zu 175cm Höhe größter flugfähiger Vogel. Vom australischen Brolgakranich durch den ausgedehnteren rothäutigen Gesichts- und Halsbereich unterschieden. Gräbt im Gegensatz zu diesem nicht nach Nahrung. Lauteste Stimme aller Kraniche.', 'Hat sein Verbreitungsgebiet im Verlauf der letzten Jahrzehnte auf den australischen Kontinent ausgedehnt. Dort behauptet er sich zunehmend gegen seinen kleineren Verwandten.', 'Indien, Südostasien, Nordaustralien', '1002', '0', '0')


-- Helmkasuar

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1010', '111', '3', 'Kasuare', 'Casuariidae')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1011', '1010', '6', 'Kasuare', 'Casuarius')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1012', '1011', '4', 'Helmkasuar', 'Casuarius casuarius')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1003', '1', '1012')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1003', 'Flugunfähiger Vogel mit kräftigen Beinen. Weibchen bis 1.70m hoch und 60kg schwer, Männchen etwa halb so schwer. Helmartiger Kopfaufsatz, der den Tieren gegenseitig die relative Ranghöhe anzeigen könnte.', 'Territorialer Waldvogel, der nur zur Fortpflanzung kurzzeitig paarweise auftritt. Nach der Eiablage besucht das Weibchen andere Männchen, um sich auch mit diesem zu verpaaren. Die Jungenaufzucht erledigt das Männchen.', 'Neuguinea, Australien', '1003', '0', '0')


-- Waldrapp

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1013', '114', '3', 'Ibisse und Löffler', 'Threskiornithidae')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1014', '1013', '7', 'Ibisse', 'Threskiornithinae')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, BINOMIALNAME) VALUES ('1015', '1014', '6', 'Geronticus')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1016', '1015', '4', 'Waldrapp', 'Geronticus eremita')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1004', '1', '1016')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, HABITAT, TBLANIMALSPECIES_ID) VALUES ('1004', 'Ehemals auch in Europa verbreitet heute nur noch Restvorkommen in Marokko und am Euphrat', 'Afrika', '1004')


-- Europäischer Uhu

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2000', '176', '6', 'Uhus', 'Bubo')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2001', '2000', '4', 'Uhu', 'Bubo Bubo')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('2000', '1', '2001')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('2000', 'Bei einer Körpergröße von 60-75cm, einer Spannweite von 160-180cm und einem Gewicht bis über 4000g eine der größten Eulen überhaupt. Kennzeichnend sind die Federohren, die jedoch nicht zum Hören dienen.', 'Lange Zeit gebietsweise stark von der Ausrottung bedroht, hat sich der Bestand durch strengen Schutz und auswilderung zoogeborener Tiere in den letzten Jahrzehnten in Zentraleuropa erfreulich erholt. Monogame Lebensweise.', 'Eurasien', '2000', '0', '0')


-- Maguaristorch

INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2002', '115', '6', 'Eigentliche Störche', 'Ciconia')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2003', '2002', '4', 'Maguaristorch', 'Ciconia maguari')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('2001', '1', '2003')
INSERT INTO "GRP_SCHILD_6"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('2001', 'Blaugrauer Schnabel, rothäutige Augenregion und gegeabelter Schwanz; sonst ähnlich dem Weißstorch.', 'Besiedelt Überschwemmungs- und Sumpfgebiete, wo er nach Amphibien, Fischen und Kerbtieren jagt. Die Nistplätze sind stets vom Wasser. Das bis zu 2m breite Nest befindet sich häufig direkt am Boden in dichter Schilfvegetation. An günstigen Orten brüten oft 5-15 Paare auf je 2-4 Eiern eng beieinander. Nach etwa 30-tägiger Bebrütung schlüpfen die Jungen, die im Alter von 9 Wochen flügge werden.', 'Östlich der Anden von Venezuela bis Argentinien in Feuchtgebieten', '2001', '0', '0')
