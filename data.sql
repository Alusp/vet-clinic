/* Populate database with sample data. */

INSERT INTO animals(id, name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES(1, 'Agumon', '02-03-2020', 0, TRUE, 10.23);

INSERT INTO animals(id, name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES(2, 'Gabumon', '11-15-2018', 2, TRUE, 8);

INSERT INTO animals(id, name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES(3, 'Pikachu', '01-07-2021', 1, FALSE, 15.04);

INSERT INTO animals(id, name, date_of_birth, escape_attempts,neutered,weight_kg) VALUES(4, 'Devimon', '05-12-2017', 5, TRUE, 11);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(5,'Charmander','02-08-2020',0,FALSE,11.0);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(6,'Plantmon','11-15-2021',2,TRUE,5.7);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(7,'Squirtle','04-02-1993',3,TRUE,12.13);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(8,'Angemon','06-12-2005',1,FALSE,45);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(9,'Boarmon','06-07-2005',7,TRUE,20.4);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(10,'Blossom','10-13-1998',3,FALSE,17);

INSERT INTO animals(id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(11,'Ditto','05-14-2022',4,TRUE,22);

/* Insert the following data into the owners table */
INSERT INTO owners(full_name,age) VALUES('Sam Smith',34);
 
INSERT INTO owners(full_name,age) VALUES('Jennifer Orwell',19);
 
INSERT INTO owners(full_name,age) VALUES('BOb',45);
 
INSERT INTO owners(full_name,age) VALUES('Melody Pond',77);
 
INSERT INTO owners(full_name,age) VALUES('Dean Winchester',14);
 
INSERT INTO owners(full_name,age) VALUES('Jodie Whittaker',38);

/* Insert the following data into the Species table */
INSERT INTO species(name) VALUES('Pokemon');
INSERT INTO species(name) VALUES('Digimon');

/* Modify your inserted animals so it includes the species_id value */
/* If the name ends in "mon" it will be Digimon */
UPDATE animals
SET species_id = 1         
WHERE name LIKE '%mon';

/*All other animals are Pokemon*/
UPDATE animals
SET species_id = 2
WHERE NOT name LIKE '%mon';

/* Modify your inserted animals to include owner information (owner_id) */
UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';
 
vet_clinic=# UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon' and name = 'Pikachu';
 
vet_clinic=# UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon';
 
vet_clinic=# UPDATE animals
SET owner_id = 2
WHERE name = 'Pikachu';
 
vet_clinic=# UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon';
 
vet_clinic=# UPDATE animals
SET owner_id = 3
WHERE name = 'Plantmon';
 
vet_clinic=# UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander';
 
vet_clinic=# UPDATE animals
SET owner_id = 4
WHERE name = 'Blossom';
 
vet_clinic=# UPDATE animals
SET owner_id = 4
WHERE name = 'Squirtle';
 
vet_clinic=# UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon';
 
vet_clinic=# UPDATE animals
SET owner_id = 5
WHERE name = 'Boarmon';
 

 /* Insert the following data into the visits table */
INSERT INTO vets(name,age,date_of_graduation) VALUES('William Tatcher',45,'04-23-2000');
INSERT INTO vets(name,age,date_of_graduation) VALUES('Maisy Smith',26,'01-17-2019');
INSERT INTO vets(name,age,date_of_graduation) VALUES('Stephanie Mendez',64,'05-04-1981');
INSERT INTO vets(name,age,date_of_graduation) VALUES('Jack Harkness',38,'06-08-2008');

/* Insert the following data into the SPECIALIZATION table */
INSERT INTO specializations(vets_id,species_id) VALUES(1,1);
INSERT INTO specializations(vets_id,species_id) VALUES(3,2);
INSERT INTO specializations(vets_id,species_id) VALUES(3,1);
INSERT INTO specializations(vets_id,species_id) VALUES(4,2);

/* Insert the following data into the visits table */

INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(1,1,'2020-05-24');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(1,3,'2020-07-22');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(2,4,'2021-02-02');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(3,2,'2020-01-05');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(3,2,'03-08-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(3,2,'05-14-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(4,3,'05-04-2021');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(5,4,'02-24-2021');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(6,2,'12-21-2019');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(6,1,'08-10-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(6,2,'04-07-2021');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(7,3,'09-29-2019');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(8,4,'10-03-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(8,4,'11-04-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(9,2,'01-24-2019');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(9,2,'05-15-2019');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(9,2,'02-27-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(9,2,'08-03-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(10,3,'05-24-2020');
INSERT INTO visits(animal_id,vet_id,date_of_visit) VALUES(10,1,'01-11-2021');

