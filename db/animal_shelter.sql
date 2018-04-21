

    DROP TABLE adoption;
    DROP TABLE owners;
    DROP TABLE animals;


    CREATE TABLE owners(
        id SERIAL4 PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        address VARCHAR(255),
        phone INT,
        email VARCHAR(255),
        adoptied_animals VARCAHR(255)
      );

    CREATE TABLE animals(
        id SERIAL4 PRIMARY KEY,
        name VARCHAR(255),
        breed VARCHAR(255),
        adoption_status BOOLEAN,
        admisson_date INT
    );

    CREATE TABLE adoption(
      id SERIAL4 PRIMARY KEY,
      owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE,
      animal_id INT4 REFERENCES animals(id) ON DELETE CASCADE,
    );