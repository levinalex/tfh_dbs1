CREATE TABLE languages (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NULL,
  iso369name VARCHAR(3) NULL,
  PRIMARY KEY(id),
  UNIQUE INDEX languages_isoname(iso369name)
)
TYPE=InnoDB;

CREATE TABLE locations (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  inside_of_id INTEGER UNSIGNED NULL,
  latitude FLOAT NULL,
  longitude FLOAT NULL,
  elevation FLOAT NULL,
  position_error INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX location_FKIndex1(inside_of_id),
  FOREIGN KEY(inside_of_id)
    REFERENCES locations(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
TYPE=InnoDB;

CREATE TABLE pictures (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NULL,
  description TEXT NULL,
  taken_at TIMESTAMP NULL,
  imagedata BLOB NULL,
  filename VARCHAR(50) NULL,
  PRIMARY KEY(id)
)
TYPE=InnoDB;

CREATE TABLE description_types (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NULL,
  PRIMARY KEY(id)
)
TYPE=InnoDB;


INSERT INTO description_types (id, title) VALUES(1, 'Merkmale'), (2, 'Biologie');


CREATE TABLE animal_system_types (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name INTEGER UNSIGNED NULL,
  sort_order INTEGER UNSIGNED NULL,
  PRIMARY KEY(id)
);

CREATE TABLE animal_systems (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  animal_systems_id INTEGER UNSIGNED NOT NULL,
  animal_systems_types_id INTEGER UNSIGNED NOT NULL,
  name INTEGER UNSIGNED NULL,
  parent_id INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX animal_system_FKIndex1(animal_systems_types_id),
  INDEX animal_systems_FKIndex2(animal_systems_id),
  FOREIGN KEY(animal_systems_types_id)
    REFERENCES animal_system_types(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(animal_systems_id)
    REFERENCES animal_systems(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE species (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  pictures_id INTEGER UNSIGNED NULL,
  animal_systems_id INTEGER UNSIGNED NULL,
  name VARCHAR(45) NULL,
  scientific_name VARCHAR(45) NULL,
  english_name VARCHAR(45) NULL,
  PRIMARY KEY(id),
  INDEX species_FKIndex1(pictures_id),
  INDEX species_FKIndex2(animal_systems_id),
  FOREIGN KEY(pictures_id)
    REFERENCES pictures(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(animal_systems_id)
    REFERENCES animal_systems(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
TYPE=InnoDB;

CREATE TABLE descriptions (
  id INTEGER UNSIGNED NOT NULL,
  description_type_id INTEGER UNSIGNED NOT NULL,
  language_id INTEGER UNSIGNED NOT NULL,
  species_id INTEGER UNSIGNED NOT NULL,
  parent_id INTEGER UNSIGNED NULL,
  text TEXT NULL,
  updated_at TIMESTAMP NULL,
  PRIMARY KEY(id),
  INDEX descriptions_FKIndex1(parent_id),
  INDEX descriptions_FKIndex2(species_id),
  INDEX descriptions_FKIndex3(language_id),
  INDEX descriptions_FKIndex4(description_type_id),
  FOREIGN KEY(parent_id)
    REFERENCES descriptions(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(species_id)
    REFERENCES species(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(language_id)
    REFERENCES languages(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(description_type_id)
    REFERENCES description_types(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
TYPE=InnoDB;

CREATE TABLE species_locations (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  location_id INTEGER UNSIGNED NOT NULL,
  species_id INTEGER UNSIGNED NOT NULL,
  number INTEGER UNSIGNED NULL,
  PRIMARY KEY(id),
  INDEX species_groups_FKIndex1(location_id),
  INDEX species_groups_FKIndex2(species_id),
  UNIQUE INDEX species_groups(species_id, location_id),
  FOREIGN KEY(location_id)
    REFERENCES locations(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(species_id)
    REFERENCES species(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
TYPE=InnoDB;

CREATE TABLE individuals (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  species_group_id INTEGER UNSIGNED NOT NULL,
  name VARCHAR(50) NULL,
  born_at TIMESTAMP NULL,
  gender VARCHAR(1) NULL,
  PRIMARY KEY(id),
  INDEX individuals_FKIndex1(species_group_id),
  FOREIGN KEY(species_group_id)
    REFERENCES species_locations(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
TYPE=InnoDB;

CREATE TABLE pictured (
  picture_id INTEGER UNSIGNED NOT NULL,
  individual_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(picture_id, individual_id),
  INDEX individuals_has_pictures_FKIndex1(individual_id),
  INDEX individuals_has_pictures_FKIndex2(picture_id),
  FOREIGN KEY(individual_id)
    REFERENCES individuals(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(picture_id)
    REFERENCES pictures(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)
TYPE=InnoDB;


