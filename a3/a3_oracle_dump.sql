--------------------------------------------------------
--  File created - Thursday-June-26-2008   
--------------------------------------------------------

--------------------------------------------------------
--  DDL for Table ANIMAL_SYSTEMS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" 
   (	"ID" NUMBER, 
	"ANIMAL_SYSTEM_TYPES_ID" NUMBER, 
	"NAME" VARCHAR2(100), 
	"PARENT_ID" NUMBER, 
	"SCIENTIFIC_NAME" VARCHAR2(100)
   ) ;
 
--------------------------------------------------------
--  DDL for Table ANIMAL_SYSTEM_TYPES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(30), 
	"SORTORDER" NUMBER(*,0)
   ) ;
 
--------------------------------------------------------
--  DDL for Table DESCRIPTIONS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."DESCRIPTIONS" 
   (	"ID" NUMBER, 
	"DESCRIPTION_TYPE_ID" NUMBER, 
	"LANGUAGE_ID" NUMBER, 
	"SPECIES_ID" NUMBER, 
	"PARENT_ID" NUMBER, 
	"TEXT" VARCHAR2(4000), 
	"UPDATED_AT" DATE
   ) ;
 
--------------------------------------------------------
--  DDL for Table DESCRIPTION_TYPES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" 
   (	"ID" NUMBER, 
	"TITLE" VARCHAR2(50)
   ) ;
 
--------------------------------------------------------
--  DDL for Table INDIVIDUALS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."INDIVIDUALS" 
   (	"ID" NUMBER(*,0), 
	"SPECIES_GROUP_ID" NUMBER(*,0), 
	"NAME" VARCHAR2(50), 
	"BORN_AT" DATE, 
	"GENDER" VARCHAR2(1)
   ) ;
 
--------------------------------------------------------
--  DDL for Table LANGUAGES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."LANGUAGES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(50), 
	"ISO369NAME" VARCHAR2(3)
   ) ;
 
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."LOCATIONS" 
   (	"ID" NUMBER(*,0), 
	"INSIDE_OF_ID" NUMBER(*,0), 
	"LATITUDE" NUMBER, 
	"LONGITUDE" NUMBER, 
	"ELEVATION" NUMBER, 
	"POSITION_ERROR" NUMBER, 
	"NAME" VARCHAR2(200)
   ) ;
 
--------------------------------------------------------
--  DDL for Table PICTURED
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."PICTURED" 
   (	"PICTURE_ID" NUMBER, 
	"INDIVIDUAL_ID" NUMBER
   ) ;
 
--------------------------------------------------------
--  DDL for Table PICTURES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."PICTURES" 
   (	"ID" NUMBER(*,0), 
	"TITLE" VARCHAR2(50 CHAR), 
	"DESCRIPTION" VARCHAR2(4000), 
	"TAKEN_AT" DATE, 
	"IMAGEDATA" BLOB, 
	"FILENAME" VARCHAR2(50 CHAR)
   ) ;
 
--------------------------------------------------------
--  DDL for Table SPECIES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."SPECIES" 
   (	"ID" NUMBER, 
	"PICTURES_ID" NUMBER, 
	"ANIMAL_SYSTEMS_ID" NUMBER, 
	"NAME" VARCHAR2(100), 
	"SCIENTIFIC_NAME" VARCHAR2(100), 
	"ENGLISH_NAME" VARCHAR2(100)
   ) ;
 
--------------------------------------------------------
--  DDL for Table SPECIES_LOCATIONS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" 
   (	"ID" NUMBER, 
	"LOCATION_ID" NUMBER, 
	"SPECIES_ID" NUMBER, 
	"ANZAHL" NUMBER(*,0)
   ) ;
 
---------------------------------------------------
--   DATA FOR TABLE ANIMAL_SYSTEMS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into ANIMAL_SYSTEMS
Insert into ANIMAL_SYSTEMS (ID,ANIMAL_SYSTEM_TYPES_ID,NAME,PARENT_ID,SCIENTIFIC_NAME) values (1,4,'Vögel',null,'Aves');
Insert into ANIMAL_SYSTEMS (ID,ANIMAL_SYSTEM_TYPES_ID,NAME,PARENT_ID,SCIENTIFIC_NAME) values (2,5,'Schreitvögel',1,'Ciconiiformes');
Insert into ANIMAL_SYSTEMS (ID,ANIMAL_SYSTEM_TYPES_ID,NAME,PARENT_ID,SCIENTIFIC_NAME) values (3,6,'Reiher',2,'Ardeidae');
Insert into ANIMAL_SYSTEMS (ID,ANIMAL_SYSTEM_TYPES_ID,NAME,PARENT_ID,SCIENTIFIC_NAME) values (4,8,'Nachtreiher',3,'Nycticoracinae');
Insert into ANIMAL_SYSTEMS (ID,ANIMAL_SYSTEM_TYPES_ID,NAME,PARENT_ID,SCIENTIFIC_NAME) values (5,7,'Nycticorax',4,'Nycticorax');

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_SYSTEMS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ANIMAL_SYSTEM_TYPES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into ANIMAL_SYSTEM_TYPES
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (1,'Reich',10);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (2,'Abteilung',20);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (3,'Stamm',30);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (4,'Klasse',40);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (5,'Ordnung',50);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (6,'Familie',60);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (7,'Gattung',70);
Insert into ANIMAL_SYSTEM_TYPES (ID,NAME,SORTORDER) values (8,'Unterfamilie',61);

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_SYSTEM_TYPES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DESCRIPTIONS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into DESCRIPTIONS
Insert into DESCRIPTIONS (ID,DESCRIPTION_TYPE_ID,LANGUAGE_ID,SPECIES_ID,PARENT_ID,TEXT,UPDATED_AT) values (1,1,1,1,null,'Weltweit in Unterarten in tropischen und gemäßigten Zonen verbreitet. Etwa 60cm groß und bis 800g schwer. Lebensraum stets in Wassernähe. Geschlechter gleich gefärbt.',to_date('26-JUN-08','DD-MON-RR'));
Insert into DESCRIPTIONS (ID,DESCRIPTION_TYPE_ID,LANGUAGE_ID,SPECIES_ID,PARENT_ID,TEXT,UPDATED_AT) values (2,2,1,1,null,'Koloniebrüter. In einigen Regionen Annsammlungen bis 2500 Nester und 5000-6000 Nester in Malysia. Erbeutet Insekten, Spinnen, Mollusken, Amphibien, Reptilien, Fische und Kleinsäuger. 3-5 Eier, die überwiegend vom Weibchen etwa 25 Tage bebrütet werden. Junge mit 6 Wochen selbständig.',to_date('26-JUN-08','DD-MON-RR'));

---------------------------------------------------
--   END DATA FOR TABLE DESCRIPTIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE DESCRIPTION_TYPES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into DESCRIPTION_TYPES
Insert into DESCRIPTION_TYPES (ID,TITLE) values (1,'Merkmale');
Insert into DESCRIPTION_TYPES (ID,TITLE) values (2,'Biologie');

---------------------------------------------------
--   END DATA FOR TABLE DESCRIPTION_TYPES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE INDIVIDUALS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into INDIVIDUALS

---------------------------------------------------
--   END DATA FOR TABLE INDIVIDUALS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE LANGUAGES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into LANGUAGES
Insert into LANGUAGES (ID,NAME,ISO369NAME) values (1,'Deutsch','de');
Insert into LANGUAGES (ID,NAME,ISO369NAME) values (2,'English','en');

---------------------------------------------------
--   END DATA FOR TABLE LANGUAGES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE LOCATIONS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into LOCATIONS
Insert into LOCATIONS (ID,INSIDE_OF_ID,LATITUDE,LONGITUDE,ELEVATION,POSITION_ERROR,NAME) values (1,null,52.51,13.338889,8,11.9,'Nachtreiherkäfig');

---------------------------------------------------
--   END DATA FOR TABLE LOCATIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PICTURED
--   FILTER = none used
---------------------------------------------------
-- INSERTING into PICTURED

---------------------------------------------------
--   END DATA FOR TABLE PICTURED
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PICTURES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into PICTURES

---------------------------------------------------
--   END DATA FOR TABLE PICTURES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SPECIES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into SPECIES
Insert into SPECIES (ID,PICTURES_ID,ANIMAL_SYSTEMS_ID,NAME,SCIENTIFIC_NAME,ENGLISH_NAME) values (1,null,5,'Nachtreiher','Nycticorax nycticorax','Black crowned Night-heron');

---------------------------------------------------
--   END DATA FOR TABLE SPECIES
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE SPECIES_LOCATIONS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into SPECIES_LOCATIONS
Insert into SPECIES_LOCATIONS (ID,LOCATION_ID,SPECIES_ID,ANZAHL) values (1,1,1,1);

---------------------------------------------------
--   END DATA FOR TABLE SPECIES_LOCATIONS
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table INDIVIDUALS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" ADD CONSTRAINT "INDIVIDUALS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" MODIFY ("SPECIES_GROUP_ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table ANIMAL_SYSTEM_TYPES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ADD CONSTRAINT "ANIMAL_SYSTEM_TYPES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" MODIFY ("ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table LANGUAGES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" ADD CONSTRAINT "LANGUAGES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" MODIFY ("ISO369NAME" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."LOCATIONS" ADD CONSTRAINT "LOCATIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."LOCATIONS" MODIFY ("ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table PICTURES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."PICTURES" ADD CONSTRAINT "PICTURES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURES" MODIFY ("ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table SPECIES_LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" ADD CONSTRAINT "SPECIES_LOCATIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" MODIFY ("ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table PICTURED
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."PICTURED" ADD CONSTRAINT "PICTURED_PK" PRIMARY KEY ("PICTURE_ID", "INDIVIDUAL_ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURED" MODIFY ("PICTURE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURED" MODIFY ("INDIVIDUAL_ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table SPECIES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES" ADD CONSTRAINT "SPECIES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."SPECIES" MODIFY ("ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table DESCRIPTION_TYPES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" ADD CONSTRAINT "DESCRIPTION_TYPES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" ADD CONSTRAINT "TITLE_UK1" UNIQUE ("TITLE") ENABLE;
 
--------------------------------------------------------
--  Constraints for Table ANIMAL_SYSTEMS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ADD CONSTRAINT "ANIMAL_SYSTEMS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" MODIFY ("ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  Constraints for Table DESCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" ADD CONSTRAINT "DESCRIPTIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("DESCRIPTION_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("LANGUAGE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("SPECIES_ID" NOT NULL ENABLE);
 
--------------------------------------------------------
--  DDL for Index INDIVIDUALS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."INDIVIDUALS_PK" ON "GRP_SCHILD_6"."INDIVIDUALS" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index PICTURED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."PICTURED_PK" ON "GRP_SCHILD_6"."PICTURED" ("PICTURE_ID", "INDIVIDUAL_ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index ANIMAL_SYSTEM_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES_PK" ON "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index SPECIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."SPECIES_PK" ON "GRP_SCHILD_6"."SPECIES" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index LOCATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."LOCATIONS_PK" ON "GRP_SCHILD_6"."LOCATIONS" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index PICTURES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."PICTURES_PK" ON "GRP_SCHILD_6"."PICTURES" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index SPECIES_LOCATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."SPECIES_LOCATIONS_PK" ON "GRP_SCHILD_6"."SPECIES_LOCATIONS" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index LANGUAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."LANGUAGES_PK" ON "GRP_SCHILD_6"."LANGUAGES" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index ANIMAL_SYSTEMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."ANIMAL_SYSTEMS_PK" ON "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index DESCRIPTION_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."DESCRIPTION_TYPES_PK" ON "GRP_SCHILD_6"."DESCRIPTION_TYPES" ("ID") 
  ;
 
--------------------------------------------------------
--  DDL for Index TITLE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."TITLE_UK1" ON "GRP_SCHILD_6"."DESCRIPTION_TYPES" ("TITLE") 
  ;
 
--------------------------------------------------------
--  DDL for Index DESCRIPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."DESCRIPTIONS_PK" ON "GRP_SCHILD_6"."DESCRIPTIONS" ("ID") 
  ;
 
--------------------------------------------------------
--  Ref Constraints for Table INDIVIDUALS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" ADD CONSTRAINT "HAS_MANY_INDIVIDUALS" FOREIGN KEY ("SPECIES_GROUP_ID")
	  REFERENCES "GRP_SCHILD_6"."SPECIES_LOCATIONS" ("ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."LOCATIONS" ADD CONSTRAINT "INSIDE_OF" FOREIGN KEY ("INSIDE_OF_ID")
	  REFERENCES "GRP_SCHILD_6"."LOCATIONS" ("ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table SPECIES_LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" ADD CONSTRAINT "BELONGS_TO_LOCATION" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "GRP_SCHILD_6"."LOCATIONS" ("ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table PICTURED
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."PICTURED" ADD CONSTRAINT "PICTURED_INDIVIDUALS_FK" FOREIGN KEY ("INDIVIDUAL_ID")
	  REFERENCES "GRP_SCHILD_6"."INDIVIDUALS" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURED" ADD CONSTRAINT "PICTURED_PICTURES_FK" FOREIGN KEY ("PICTURE_ID")
	  REFERENCES "GRP_SCHILD_6"."PICTURES" ("ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table SPECIES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES" ADD CONSTRAINT "CANONICAL_PICTURE" FOREIGN KEY ("PICTURES_ID")
	  REFERENCES "GRP_SCHILD_6"."PICTURES" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."SPECIES" ADD CONSTRAINT "HAS_POSITION_IN_ANIMAL_KINGDOM" FOREIGN KEY ("ANIMAL_SYSTEMS_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table ANIMAL_SYSTEMS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ADD CONSTRAINT "BELONGS_TO_TYPE" FOREIGN KEY ("ANIMAL_SYSTEM_TYPES_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ADD CONSTRAINT "PARENT" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") ENABLE;
 
--------------------------------------------------------
--  Ref Constraints for Table DESCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" ADD CONSTRAINT "BELONGS_TO_SPECIES" FOREIGN KEY ("SPECIES_ID")
	  REFERENCES "GRP_SCHILD_6"."SPECIES" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" ADD CONSTRAINT "EDITED_VERSION_OF_FK" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "GRP_SCHILD_6"."DESCRIPTIONS" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" ADD CONSTRAINT "HAS_LANGUAGE_FK" FOREIGN KEY ("LANGUAGE_ID")
	  REFERENCES "GRP_SCHILD_6"."LANGUAGES" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" ADD CONSTRAINT "HAS_TYPE_FK" FOREIGN KEY ("DESCRIPTION_TYPE_ID")
	  REFERENCES "GRP_SCHILD_6"."DESCRIPTION_TYPES" ("ID") ENABLE;
 