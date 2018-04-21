

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

    end #end of class
