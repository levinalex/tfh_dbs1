--  zus�tzliche Tierartentypen

INSERT INTO "BAER_TI"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('6', 'Tiergattung');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('7', 'Tierunterfamilie');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('8', 'Tierstamm');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEMTYPE" (ID, NAME) VALUES ('9', 'Tierabteilung');


-- Nachtreiher

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1000', '119', '7', 'Nachtreiher', 'Nycticoracinae');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, BINOMIALNAME) VALUES ('1001', '1000', '6', 'Nycticorax');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1002', '1001', '4', 'Nachtreiher', 'Nycticorax nycticorax');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1000', '1', '1002');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1000', 'Weltweit in Unterarten in tropischen und gem��igten Zonen verbreitet. Etwa 60cm gro� und bis 800g schwer. Lebensraum stets in Wassern�he. Geschlechter gleich gef�rbt.', 'Koloniebr�ter. In einigen Regionen Annsammlungen bis 2500 Nester und 5000-6000 Nester in Malysia. Erbeutet Insekten, Spinnen, Mollusken, Amphibien, Reptilien, Fische und Kleins�uger. 3-5 Eier, die �berwiegend vom Weibchen etwa 25 Tage bebr�tet werden. Junge mit 6 Wochen selbst�ndig.', 'Amerika, Afrika, Eurasien', '1000', '0', '0');


-- Magellan Dampfschiffente

-- FIX: Entenv�gel sind eine Familie, keine Ordnung
UPDATE "BAER_TI"."TBLANIMALSYSTEM" SET PARENT_ID = '129', TBLANIMALSYSTEMTYPE_ID = '3' WHERE ID = '146';
UPDATE "BAER_TI"."TBLANIMALSYSTEM" SET TBLANIMALSYSTEMTYPE_ID = '7' WHERE PARENT_ID = '146';
-- END FIX

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1004', '160', '6', 'Dampfschiffenten', 'Tachyeres');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1005', '1004', '4', 'Magellan-Dampfschiffente', 'Tachyeres pteneres');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1001', '1', '1005');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1001', 'Bei einer K�rpergr��e von 74-84cm wird ein Gewicht von 3600-6100g erreicht. Weibchen sind kleiner als Erpel. Flugunf�hig.', 'Lebt paarweise an der felsigen K�ste. Ern�hrt sich �berwiegend von Muscheln und Krebsen, die tauchend erbeutet werden. Brutzeit im September/Oktober. Nest in Wassern�he. 5-8 Eier.', 'S�damerika, Feuerland', '1001', '0', '0');


-- Saruskranich

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1006', '259', '3', 'Kraniche', 'Gruidae');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1007', '1006', '7', 'Echte Kraniche', 'Gruinae');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, BINOMIALNAME) VALUES ('1008', '1007', '6', 'Grus');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1009', '1008', '4', 'Saruskranich', 'Grus antigone');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1002', '1', '1009');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1002', 'Mit bis zu 175cm H�he gr��ter flugf�higer Vogel. Vom australischen Brolgakranich durch den ausgedehnteren roth�utigen Gesichts- und Halsbereich unterschieden. Gr�bt im Gegensatz zu diesem nicht nach Nahrung. Lauteste Stimme aller Kraniche.', 'Hat sein Verbreitungsgebiet im Verlauf der letzten Jahrzehnte auf den australischen Kontinent ausgedehnt. Dort behauptet er sich zunehmend gegen seinen kleineren Verwandten.', 'Indien, S�dostasien, Nordaustralien', '1002', '0', '0');


-- Helmkasuar

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1010', '111', '3', 'Kasuare', 'Casuariidae');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1011', '1010', '6', 'Kasuare', 'Casuarius');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1012', '1011', '4', 'Helmkasuar', 'Casuarius casuarius');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1003', '1', '1012');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('1003', 'Flugunf�higer Vogel mit kr�ftigen Beinen. Weibchen bis 1.70m hoch und 60kg schwer, M�nnchen etwa halb so schwer. Helmartiger Kopfaufsatz, der den Tieren gegenseitig die relative Rangh�he anzeigen k�nnte.', 'Territorialer Waldvogel, der nur zur Fortpflanzung kurzzeitig paarweise auftritt. Nach der Eiablage besucht das Weibchen andere M�nnchen, um sich auch mit diesem zu verpaaren. Die Jungenaufzucht erledigt das M�nnchen.', 'Neuguinea, Australien', '1003', '0', '0');


-- Waldrapp

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1013', '114', '3', 'Ibisse und L�ffler', 'Threskiornithidae');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1014', '1013', '7', 'Ibisse', 'Threskiornithinae');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, BINOMIALNAME) VALUES ('1015', '1014', '6', 'Geronticus');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('1016', '1015', '4', 'Waldrapp', 'Geronticus eremita');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('1004', '1', '1016');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, HABITAT, TBLANIMALSPECIES_ID) VALUES ('1004', 'Ehemals auch in Europa verbreitet heute nur noch Restvorkommen in Marokko und am Euphrat', 'Afrika', '1004');


-- Europ�ischer Uhu

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2000', '176', '6', 'Uhus', 'Bubo');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2001', '2000', '4', 'Uhu', 'Bubo Bubo');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('2000', '1', '2001');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('2000', 'Bei einer K�rpergr��e von 60-75cm, einer Spannweite von 160-180cm und einem Gewicht bis �ber 4000g eine der gr��ten Eulen �berhaupt. Kennzeichnend sind die Federohren, die jedoch nicht zum H�ren dienen.', 'Lange Zeit gebietsweise stark von der Ausrottung bedroht, hat sich der Bestand durch strengen Schutz und auswilderung zoogeborener Tiere in den letzten Jahrzehnten in Zentraleuropa erfreulich erholt. Monogame Lebensweise.', 'Eurasien', '2000', '0', '0');


-- Maguaristorch

INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2002', '115', '6', 'Eigentliche St�rche', 'Ciconia');
INSERT INTO "BAER_TI"."TBLANIMALSYSTEM" (ID, PARENT_ID, TBLANIMALSYSTEMTYPE_ID, TRIVIALNAME, BINOMIALNAME) VALUES ('2003', '2002', '4', 'Maguaristorch', 'Ciconia maguari');
INSERT INTO "BAER_TI"."TBLANIMALSPECIES" (ID, INZOO, TBLANIMALSPECIESSYSTEM_ID) VALUES ('2001', '1', '2003');
INSERT INTO "BAER_TI"."TBLANIMALSPECIESDETAIL" (ID, CHARACTERISTICS, VITA, HABITAT, TBLANIMALSPECIES_ID, ISTHREATENED, ISEEP) VALUES ('2001', 'Blaugrauer Schnabel, roth�utige Augenregion und gegeabelter Schwanz; sonst �hnlich dem Wei�storch.', 'Besiedelt �berschwemmungs- und Sumpfgebiete, wo er nach Amphibien, Fischen und Kerbtieren jagt. Die Nistpl�tze sind stets vom Wasser. Das bis zu 2m breite Nest befindet sich h�ufig direkt am Boden in dichter Schilfvegetation. An g�nstigen Orten br�ten oft 5-15 Paare auf je 2-4 Eiern eng beieinander. Nach etwa 30-t�giger Bebr�tung schl�pfen die Jungen, die im Alter von 9 Wochen fl�gge werden.', '�stlich der Anden von Venezuela bis Argentinien in Feuchtgebieten', '2001', '0', '0');

-- Bilder

call baer_ti.insertAnimalImage(1000, 'Nachtreiher', 'ein Nachtreiher','7Nachtreiher.JPG');
call baer_ti.insertAnimalImage(1001, 'Magellan-Dampfschiffente', 'eine Magellan-Dampfschiffente','7Magellan Dampfschiffente.JPG');
call baer_ti.insertAnimalImage(1002, 'Saruskranich', 'ein Saruskranich','7Saruskranich.JPG');
call baer_ti.insertAnimalImage(2001, 'Maguaristorch', 'ein Maguaristorch','7Maguaristorch.JPG');
call baer_ti.insertAnimalImage(2000, 'Europ�ischer Uhu', 'ein Europ�ischer Uhu','7Europ�ischer Uhu.JPG');
call baer_ti.insertAnimalImage(1004, 'Waldrapp', 'mehrere Waldrappen','7Waldrapp.JPG');
