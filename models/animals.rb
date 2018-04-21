

    require_relative('../db/sql_runner')

      class Animal

        attr_reader :name, :breed, :adopted, :adoption_date, :id

        def initialize(options)
          @id = options['id'].to_i if options['id']
          @name = options['name']
          @breed = options['breed']
          @adopted = options['adopted']
          @adoption_date = options['adoption_date']
        end

        def save()
          sql = 'INSERT INTO animals (
          name,
          breed,
          adopted,
          adoption_date)
          VALUES ($1, $2, $3, $4) RETURNING id;'
          values = [@name, @breed, @adopted, @adoption_date]
          result = SqlRunner.run(sql)
          @id = result[0]['id'].to_i
        end

        def self.all()
          sql = 'SELECT * FROM animals;'
          result = SqlRunner.run(sql)
          return map_animals(result)
        end

        def self.delete_all
        sql = 'DELETE FROM animals;'
        SqlRunner.run(sql)
        end

        def self.map_animals(animal_data)
        return animal_data.map {|animal_hash| Animal.new(animal_hash)}
      end

      def self.delete_all
        sql = 'DELETE FROM animals;'
        SqlRunner.run(sql)
      end

      def self.find_by_id(id)
        sql = 'SELECT * FROM animals WHERE id = $1;'
        value = [id]
        result = SqlRunner.run(sql, value)
        Animal.new(result[0])
      end

      def find_animal
          sql = 'SELECT * FROM animals WHERE id = $1;'
          values = [@animal_id]
          result = SqlRunner.run(sql, values)
          return Animal.new(result[0])
      end

      end #end of class
