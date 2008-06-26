--------------------------------------------------------
--  File created - Thursday-June-26-2008   
--------------------------------------------------------

 ----------------------------
 -- DROP TABLE "ANIMAL_SYSTEMS";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS";

--------------------------------------------------------
--  DDL for Table ANIMAL_SYSTEMS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ANIMAL_SYSTEM_ID" NUMBER, 
	"ANIMAL_SYSTEM_TYPES_ID" NUMBER, 
	"NAME" NUMBER, 
	"PARENT_ID" NUMBER, 
	 CONSTRAINT "ANIMAL_SYSTEMS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "BELONGS_TO_TYPE" FOREIGN KEY ("ANIMAL_SYSTEM_TYPES_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ("ID") ENABLE, 
	 CONSTRAINT "PARENT" FOREIGN KEY ("ANIMAL_SYSTEM_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "ANIMAL_SYSTEM_TYPES";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES";

--------------------------------------------------------
--  DDL for Table ANIMAL_SYSTEM_TYPES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"NAME" NUMBER(*,0), 
	"SORTORDER" NUMBER(*,0), 
	 CONSTRAINT "ANIMAL_SYSTEM_TYPES_PK" PRIMARY KEY ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "DESCRIPTIONS";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."DESCRIPTIONS";

--------------------------------------------------------
--  DDL for Table DESCRIPTIONS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."DESCRIPTIONS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"DESCRIPTION_TYPE_ID" NUMBER NOT NULL ENABLE, 
	"LANGUAGE_ID" NUMBER NOT NULL ENABLE, 
	"SPECIES_ID" NUMBER NOT NULL ENABLE, 
	"PARENT_ID" NUMBER, 
	"TEXT" VARCHAR2(4000), 
	"UPDATED_AT" DATE, 
	 CONSTRAINT "DESCRIPTIONS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "HAS_LANGUAGE_FK" FOREIGN KEY ("LANGUAGE_ID")
	  REFERENCES "GRP_SCHILD_6"."LANGUAGES" ("ID") ENABLE, 
	 CONSTRAINT "HAS_TYPE_FK" FOREIGN KEY ("DESCRIPTION_TYPE_ID")
	  REFERENCES "GRP_SCHILD_6"."DESCRIPTION_TYPES" ("ID") ENABLE, 
	 CONSTRAINT "EDITED_VERSION_OF_FK" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "GRP_SCHILD_6"."DESCRIPTIONS" ("ID") ENABLE, 
	 CONSTRAINT "BELONGS_TO_SPECIES" FOREIGN KEY ("SPECIES_ID")
	  REFERENCES "GRP_SCHILD_6"."SPECIES" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "DESCRIPTION_TYPES";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES";

--------------------------------------------------------
--  DDL for Table DESCRIPTION_TYPES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"TITLE" VARCHAR2(50) NOT NULL ENABLE, 
	 CONSTRAINT "DESCRIPTION_TYPES_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "TITLE_UK1" UNIQUE ("TITLE") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "INDIVIDUALS";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."INDIVIDUALS";

--------------------------------------------------------
--  DDL for Table INDIVIDUALS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."INDIVIDUALS" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"SPECIES_GROUP_ID" NUMBER(*,0) NOT NULL ENABLE, 
	"NAME" VARCHAR2(50), 
	"BORN_AT" DATE, 
	"GENDER" VARCHAR2(1), 
	 CONSTRAINT "INDIVIDUALS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "HAS_MANY_INDIVIDUALS" FOREIGN KEY ("SPECIES_GROUP_ID")
	  REFERENCES "GRP_SCHILD_6"."SPECIES_LOCATIONS" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "LANGUAGES";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."LANGUAGES";

--------------------------------------------------------
--  DDL for Table LANGUAGES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."LANGUAGES" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"NAME" VARCHAR2(50) NOT NULL ENABLE, 
	"ISO369NAME" VARCHAR2(3) NOT NULL ENABLE, 
	 CONSTRAINT "LANGUAGES_PK" PRIMARY KEY ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "LOCATIONS";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."LOCATIONS";

--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."LOCATIONS" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"INSIDE_OF_ID" NUMBER(*,0), 
	"LATITUDE" NUMBER, 
	"LONGITUDE" NUMBER, 
	"ELEVATION" NUMBER, 
	"POSITION_ERROR" NUMBER, 
	"NAME" VARCHAR2(200), 
	 CONSTRAINT "LOCATIONS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "INSIDE_OF" FOREIGN KEY ("INSIDE_OF_ID")
	  REFERENCES "GRP_SCHILD_6"."LOCATIONS" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "PICTURED";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."PICTURED";

--------------------------------------------------------
--  DDL for Table PICTURED
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."PICTURED" 
   (	"PICTURE_ID" NUMBER NOT NULL ENABLE, 
	"INDIVIDUAL_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "PICTURED_PK" PRIMARY KEY ("PICTURE_ID", "INDIVIDUAL_ID") ENABLE, 
	 CONSTRAINT "PICTURED_PICTURES_FK" FOREIGN KEY ("PICTURE_ID")
	  REFERENCES "GRP_SCHILD_6"."PICTURES" ("ID") ENABLE, 
	 CONSTRAINT "PICTURED_INDIVIDUALS_FK" FOREIGN KEY ("INDIVIDUAL_ID")
	  REFERENCES "GRP_SCHILD_6"."INDIVIDUALS" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "PICTURES";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."PICTURES";

--------------------------------------------------------
--  DDL for Table PICTURES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."PICTURES" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"TITLE" VARCHAR2(50 CHAR), 
	"DESCRIPTION" VARCHAR2(4000), 
	"TAKEN_AT" DATE, 
	"IMAGEDATA" BLOB, 
	"FILENAME" VARCHAR2(50 CHAR), 
	 CONSTRAINT "PICTURES_PK" PRIMARY KEY ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "SPECIES";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."SPECIES";

--------------------------------------------------------
--  DDL for Table SPECIES
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."SPECIES" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PICTURES_ID" NUMBER, 
	"ANIMAL_SYSTEMS_ID" NUMBER, 
	"NAME" VARCHAR2(100), 
	"SCIENTIFIC_NAME" VARCHAR2(100), 
	"ENGLISH_NAME" VARCHAR2(100), 
	 CONSTRAINT "SPECIES_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "CANONICAL_PICTURE" FOREIGN KEY ("PICTURES_ID")
	  REFERENCES "GRP_SCHILD_6"."PICTURES" ("ID") ENABLE, 
	 CONSTRAINT "HAS_POSITION_IN_ANIMAL_KINGDOM" FOREIGN KEY ("ANIMAL_SYSTEMS_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP TABLE "SPECIES_LOCATIONS";
 ----------------------------
  DROP TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS";

--------------------------------------------------------
--  DDL for Table SPECIES_LOCATIONS
--------------------------------------------------------

  CREATE TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"LOCATION_ID" NUMBER, 
	"SPECIES_ID" NUMBER, 
	"ANZAHL" NUMBER(*,0), 
	 CONSTRAINT "SPECIES_LOCATIONS_PK" PRIMARY KEY ("ID") ENABLE, 
	 CONSTRAINT "BELONGS_TO_LOCATION" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "GRP_SCHILD_6"."LOCATIONS" ("ID") ENABLE
   ) ;
 
 ----------------------------
 -- DROP DATA "ANIMAL_SYSTEMS";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."ANIMAL_SYSTEMS";

---------------------------------------------------
--   DATA FOR TABLE ANIMAL_SYSTEMS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into ANIMAL_SYSTEMS

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_SYSTEMS
---------------------------------------------------

 ----------------------------
 -- DROP DATA "ANIMAL_SYSTEM_TYPES";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES";

---------------------------------------------------
--   DATA FOR TABLE ANIMAL_SYSTEM_TYPES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into ANIMAL_SYSTEM_TYPES

---------------------------------------------------
--   END DATA FOR TABLE ANIMAL_SYSTEM_TYPES
---------------------------------------------------

 ----------------------------
 -- DROP DATA "DESCRIPTIONS";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."DESCRIPTIONS";

---------------------------------------------------
--   DATA FOR TABLE DESCRIPTIONS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into DESCRIPTIONS

---------------------------------------------------
--   END DATA FOR TABLE DESCRIPTIONS
---------------------------------------------------

 ----------------------------
 -- DROP DATA "DESCRIPTION_TYPES";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."DESCRIPTION_TYPES";

---------------------------------------------------
--   DATA FOR TABLE DESCRIPTION_TYPES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into DESCRIPTION_TYPES

---------------------------------------------------
--   END DATA FOR TABLE DESCRIPTION_TYPES
---------------------------------------------------

 ----------------------------
 -- DROP DATA "INDIVIDUALS";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."INDIVIDUALS";

---------------------------------------------------
--   DATA FOR TABLE INDIVIDUALS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into INDIVIDUALS

---------------------------------------------------
--   END DATA FOR TABLE INDIVIDUALS
---------------------------------------------------

 ----------------------------
 -- DROP DATA "LANGUAGES";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."LANGUAGES";

---------------------------------------------------
--   DATA FOR TABLE LANGUAGES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into LANGUAGES

---------------------------------------------------
--   END DATA FOR TABLE LANGUAGES
---------------------------------------------------

 ----------------------------
 -- DROP DATA "LOCATIONS";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."LOCATIONS";

---------------------------------------------------
--   DATA FOR TABLE LOCATIONS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into LOCATIONS

---------------------------------------------------
--   END DATA FOR TABLE LOCATIONS
---------------------------------------------------

 ----------------------------
 -- DROP DATA "PICTURED";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."PICTURED";

---------------------------------------------------
--   DATA FOR TABLE PICTURED
--   FILTER = none used
---------------------------------------------------
-- INSERTING into PICTURED

---------------------------------------------------
--   END DATA FOR TABLE PICTURED
---------------------------------------------------

 ----------------------------
 -- DROP DATA "PICTURES";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."PICTURES";

---------------------------------------------------
--   DATA FOR TABLE PICTURES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into PICTURES

---------------------------------------------------
--   END DATA FOR TABLE PICTURES
---------------------------------------------------

 ----------------------------
 -- DROP DATA "SPECIES";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."SPECIES";

---------------------------------------------------
--   DATA FOR TABLE SPECIES
--   FILTER = none used
---------------------------------------------------
-- INSERTING into SPECIES

---------------------------------------------------
--   END DATA FOR TABLE SPECIES
---------------------------------------------------

 ----------------------------
 -- DROP DATA "SPECIES_LOCATIONS";
 ----------------------------
  DROP DATA "GRP_SCHILD_6"."SPECIES_LOCATIONS";

---------------------------------------------------
--   DATA FOR TABLE SPECIES_LOCATIONS
--   FILTER = none used
---------------------------------------------------
-- INSERTING into SPECIES_LOCATIONS

---------------------------------------------------
--   END DATA FOR TABLE SPECIES_LOCATIONS
---------------------------------------------------

 ----------------------------
 -- DROP CONSTRAINT "INDIVIDUALS";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."INDIVIDUALS";

--------------------------------------------------------
--  Constraints for Table INDIVIDUALS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" ADD CONSTRAINT "INDIVIDUALS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" MODIFY ("SPECIES_GROUP_ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "ANIMAL_SYSTEM_TYPES";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES";

--------------------------------------------------------
--  Constraints for Table ANIMAL_SYSTEM_TYPES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ADD CONSTRAINT "ANIMAL_SYSTEM_TYPES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" MODIFY ("ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "LANGUAGES";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."LANGUAGES";

--------------------------------------------------------
--  Constraints for Table LANGUAGES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" ADD CONSTRAINT "LANGUAGES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."LANGUAGES" MODIFY ("ISO369NAME" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "LOCATIONS";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."LOCATIONS";

--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."LOCATIONS" ADD CONSTRAINT "LOCATIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."LOCATIONS" MODIFY ("ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "PICTURES";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."PICTURES";

--------------------------------------------------------
--  Constraints for Table PICTURES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."PICTURES" ADD CONSTRAINT "PICTURES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURES" MODIFY ("ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "SPECIES_LOCATIONS";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."SPECIES_LOCATIONS";

--------------------------------------------------------
--  Constraints for Table SPECIES_LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" ADD CONSTRAINT "SPECIES_LOCATIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" MODIFY ("ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "PICTURED";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."PICTURED";

--------------------------------------------------------
--  Constraints for Table PICTURED
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."PICTURED" ADD CONSTRAINT "PICTURED_PK" PRIMARY KEY ("PICTURE_ID", "INDIVIDUAL_ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURED" MODIFY ("PICTURE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURED" MODIFY ("INDIVIDUAL_ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "SPECIES";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."SPECIES";

--------------------------------------------------------
--  Constraints for Table SPECIES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES" ADD CONSTRAINT "SPECIES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."SPECIES" MODIFY ("ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "DESCRIPTION_TYPES";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."DESCRIPTION_TYPES";

--------------------------------------------------------
--  Constraints for Table DESCRIPTION_TYPES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" ADD CONSTRAINT "DESCRIPTION_TYPES_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTION_TYPES" ADD CONSTRAINT "TITLE_UK1" UNIQUE ("TITLE") ENABLE;
 
 ----------------------------
 -- DROP CONSTRAINT "ANIMAL_SYSTEMS";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."ANIMAL_SYSTEMS";

--------------------------------------------------------
--  Constraints for Table ANIMAL_SYSTEMS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ADD CONSTRAINT "ANIMAL_SYSTEMS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" MODIFY ("ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP CONSTRAINT "DESCRIPTIONS";
 ----------------------------
  DROP CONSTRAINT "GRP_SCHILD_6"."DESCRIPTIONS";

--------------------------------------------------------
--  Constraints for Table DESCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" ADD CONSTRAINT "DESCRIPTIONS_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("DESCRIPTION_TYPE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("LANGUAGE_ID" NOT NULL ENABLE);
 
  ALTER TABLE "GRP_SCHILD_6"."DESCRIPTIONS" MODIFY ("SPECIES_ID" NOT NULL ENABLE);
 
 ----------------------------
 -- DROP INDEX "INDIVIDUALS_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."INDIVIDUALS_PK";

--------------------------------------------------------
--  DDL for Index INDIVIDUALS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."INDIVIDUALS_PK" ON "GRP_SCHILD_6"."INDIVIDUALS" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "PICTURED_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."PICTURED_PK";

--------------------------------------------------------
--  DDL for Index PICTURED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."PICTURED_PK" ON "GRP_SCHILD_6"."PICTURED" ("PICTURE_ID", "INDIVIDUAL_ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "ANIMAL_SYSTEM_TYPES_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES_PK";

--------------------------------------------------------
--  DDL for Index ANIMAL_SYSTEM_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES_PK" ON "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "SPECIES_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."SPECIES_PK";

--------------------------------------------------------
--  DDL for Index SPECIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."SPECIES_PK" ON "GRP_SCHILD_6"."SPECIES" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "LOCATIONS_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."LOCATIONS_PK";

--------------------------------------------------------
--  DDL for Index LOCATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."LOCATIONS_PK" ON "GRP_SCHILD_6"."LOCATIONS" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "PICTURES_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."PICTURES_PK";

--------------------------------------------------------
--  DDL for Index PICTURES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."PICTURES_PK" ON "GRP_SCHILD_6"."PICTURES" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "SPECIES_LOCATIONS_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."SPECIES_LOCATIONS_PK";

--------------------------------------------------------
--  DDL for Index SPECIES_LOCATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."SPECIES_LOCATIONS_PK" ON "GRP_SCHILD_6"."SPECIES_LOCATIONS" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "LANGUAGES_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."LANGUAGES_PK";

--------------------------------------------------------
--  DDL for Index LANGUAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."LANGUAGES_PK" ON "GRP_SCHILD_6"."LANGUAGES" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "ANIMAL_SYSTEMS_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."ANIMAL_SYSTEMS_PK";

--------------------------------------------------------
--  DDL for Index ANIMAL_SYSTEMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."ANIMAL_SYSTEMS_PK" ON "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "DESCRIPTION_TYPES_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."DESCRIPTION_TYPES_PK";

--------------------------------------------------------
--  DDL for Index DESCRIPTION_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."DESCRIPTION_TYPES_PK" ON "GRP_SCHILD_6"."DESCRIPTION_TYPES" ("ID") 
  ;
 
 ----------------------------
 -- DROP INDEX "TITLE_UK1";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."TITLE_UK1";

--------------------------------------------------------
--  DDL for Index TITLE_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."TITLE_UK1" ON "GRP_SCHILD_6"."DESCRIPTION_TYPES" ("TITLE") 
  ;
 
 ----------------------------
 -- DROP INDEX "DESCRIPTIONS_PK";
 ----------------------------
  DROP INDEX "GRP_SCHILD_6"."DESCRIPTIONS_PK";

--------------------------------------------------------
--  DDL for Index DESCRIPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GRP_SCHILD_6"."DESCRIPTIONS_PK" ON "GRP_SCHILD_6"."DESCRIPTIONS" ("ID") 
  ;
 
 ----------------------------
 -- DROP REFCONSTRAINT "INDIVIDUALS";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."INDIVIDUALS";

--------------------------------------------------------
--  Ref Constraints for Table INDIVIDUALS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."INDIVIDUALS" ADD CONSTRAINT "HAS_MANY_INDIVIDUALS" FOREIGN KEY ("SPECIES_GROUP_ID")
	  REFERENCES "GRP_SCHILD_6"."SPECIES_LOCATIONS" ("ID") ENABLE;
 
 ----------------------------
 -- DROP REFCONSTRAINT "ANIMAL_SYSTEM_TYPES";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES";

 ----------------------------
 -- DROP REFCONSTRAINT "LANGUAGES";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."LANGUAGES";

 ----------------------------
 -- DROP REFCONSTRAINT "LOCATIONS";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."LOCATIONS";

--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."LOCATIONS" ADD CONSTRAINT "INSIDE_OF" FOREIGN KEY ("INSIDE_OF_ID")
	  REFERENCES "GRP_SCHILD_6"."LOCATIONS" ("ID") ENABLE;
 
 ----------------------------
 -- DROP REFCONSTRAINT "PICTURES";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."PICTURES";

 ----------------------------
 -- DROP REFCONSTRAINT "SPECIES_LOCATIONS";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."SPECIES_LOCATIONS";

--------------------------------------------------------
--  Ref Constraints for Table SPECIES_LOCATIONS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES_LOCATIONS" ADD CONSTRAINT "BELONGS_TO_LOCATION" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "GRP_SCHILD_6"."LOCATIONS" ("ID") ENABLE;
 
 ----------------------------
 -- DROP REFCONSTRAINT "PICTURED";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."PICTURED";

--------------------------------------------------------
--  Ref Constraints for Table PICTURED
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."PICTURED" ADD CONSTRAINT "PICTURED_INDIVIDUALS_FK" FOREIGN KEY ("INDIVIDUAL_ID")
	  REFERENCES "GRP_SCHILD_6"."INDIVIDUALS" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."PICTURED" ADD CONSTRAINT "PICTURED_PICTURES_FK" FOREIGN KEY ("PICTURE_ID")
	  REFERENCES "GRP_SCHILD_6"."PICTURES" ("ID") ENABLE;
 
 ----------------------------
 -- DROP REFCONSTRAINT "SPECIES";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."SPECIES";

--------------------------------------------------------
--  Ref Constraints for Table SPECIES
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."SPECIES" ADD CONSTRAINT "CANONICAL_PICTURE" FOREIGN KEY ("PICTURES_ID")
	  REFERENCES "GRP_SCHILD_6"."PICTURES" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."SPECIES" ADD CONSTRAINT "HAS_POSITION_IN_ANIMAL_KINGDOM" FOREIGN KEY ("ANIMAL_SYSTEMS_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") ENABLE;
 
 ----------------------------
 -- DROP REFCONSTRAINT "DESCRIPTION_TYPES";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."DESCRIPTION_TYPES";

 ----------------------------
 -- DROP REFCONSTRAINT "ANIMAL_SYSTEMS";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."ANIMAL_SYSTEMS";

--------------------------------------------------------
--  Ref Constraints for Table ANIMAL_SYSTEMS
--------------------------------------------------------

  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ADD CONSTRAINT "BELONGS_TO_TYPE" FOREIGN KEY ("ANIMAL_SYSTEM_TYPES_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEM_TYPES" ("ID") ENABLE;
 
  ALTER TABLE "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ADD CONSTRAINT "PARENT" FOREIGN KEY ("ANIMAL_SYSTEM_ID")
	  REFERENCES "GRP_SCHILD_6"."ANIMAL_SYSTEMS" ("ID") ENABLE;
 
 ----------------------------
 -- DROP REFCONSTRAINT "DESCRIPTIONS";
 ----------------------------
  DROP REFCONSTRAINT "GRP_SCHILD_6"."DESCRIPTIONS";

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
 