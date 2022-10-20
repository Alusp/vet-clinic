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
