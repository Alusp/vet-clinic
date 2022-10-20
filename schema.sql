/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth date,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

/* Add a column species of type string to your animals table */
ALTER TABLE animals ADD species VARCHAR(255);

/* Create a table named owners */
CREATE TABLE owners(
id INT GENERATED ALWAYS AS IDENTITY,
full_name VARCHAR(255),
age INT);

/* Create a table named species */
CREATE TABLE species(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(255)
);

/* Modify animals table */
/* set as autoincremented PRIMARY KEY */
ALTER TABLE animals
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

/* Remove column species */
ALTER TABLE animals
DROP COLUMN species;

/* Add column species_id which is a foreign key referencing species table */
ALTER TABLE animals
ADD COLUMN species_id INT;

ALTER TABLE species
ADD PRIMARY KEY (id);

ALTER TABLE animals
ADD CONSTRAINT constraint_fk
FOREIGN KEY (species_id)
REFERENCES species(id)
ON DELETE CASCADE;

/* Add column owner_id which is a foreign key referencing the owners table */
ALTER TABLE owners 
ADD PRIMARY KEY (id);

ALTER TABLE animals
ADD COLUMN owner_id INT;

ALTER TABLE animals
ADD CONSTRAINT constraint_fkk
FOREIGN KEY (owner_id) REFERENCES owners(id);





