

    require_relative('../db/sql_runner')

      class Animal

        def initialize(options)
          @id = options['id']to_i if options ['id']
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
          VALUES ($1, $2, $3, $4, $5) RETURNING id;'
          values = [@name, @breed, @adopted, @adoption_date]
          result = SqlRunner.run(sql)
          @id = result[0]['id'].to_i
        end

      end #end of class
