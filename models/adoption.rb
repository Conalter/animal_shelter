

  require_relative('../db/sql_runner')

    class Adoption

      attr_reader :id
      attr_accessor :owner_id, :animal_id,

      def initialize(options)
        @id = options['id']to_i if options['id']
        @animal_id = options['animal_id'].to_i
        @owner_id = options['owner_id'].to_i
      end

      def save()
        sql = 'INSERT INTO adoption (
          owner_id,
          animal_id)
          VALUES ($1, $2) RETURNING id'
        values = [@owner_id, @animal_id]
        adoption = SqlRunner.run(sql, values).first
        @id = adoption['id'].to_i
      end

      def self.all()
        sql = 'SELECT * FROM adoption'
        result = SqlRunner.run(sql)
        return map_adoption(result)
      end

      def owner()
        sql = 'SELECT * FROM owners
        WHERE id = $1'
        values = [@owner_id]
        results = SqlRunner.run( sql, values )
        return Owner.new( results.first )
      end

      def animal()
        sql = 'SELECT * FROM animals
        WHERE id = $1'
        values = [@animal_id]
        results = SqlRunner.run( sql, values )
        return Animal.new( results.first )
      end

      def self.delete_all()
        sql = 'DELETE FROM adoption'
        SqlRunner.run(sql)
      end

      def self.destroy(id)
        sql = 'DELETE FROM adoption
        WHERE id = $1'
        values = [id]
        SqlRunner.run( sql, values )
      end

    end #end of class
