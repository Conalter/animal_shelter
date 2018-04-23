

    DROP TABLE IF EXISTS adoptions;
    DROP TABLE IF EXISTS owners;
    DROP TABLE IF EXISTS animals;


    CREATE TABLE owners(
        id SERIAL4 PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        address VARCHAR(255),
        phone INT,
        email VARCHAR(255),
        adopted_animals VARCHAR(255)
      );

    CREATE TABLE animals(
        id SERIAL4 PRIMARY KEY,
        name VARCHAR(255),
        breed VARCHAR(255),
        adoptable BOOLEAN,
        admission_date VARCHAR(255)
    );

    CREATE TABLE adoptions(
      id SERIAL4 PRIMARY KEY,
      owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE,
      animal_id INT4 REFERENCES animals(id) ON DELETE CASCADE
    );
