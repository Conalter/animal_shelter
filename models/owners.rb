

  require_relative('../db/sql_runner')
  require_relative('animals.rb')

    class Owner

      attr_reader :first_name, :last_name, :address, :email, :phone, :adopted_animals, :id

      def initialize(options)
        @id = options['id'].to_i
        @first_name = options['first_name']
        @last_name = options['last_name']
        @address = options['address']
        @email = options['email']
        @phone = options['phone']
        @adopted_animals = options ['adopted_animals']
      end

      def save()
        sql = 'INSERT INTO owner (
        first_name,
        last_name,
        address,
        email,
        phone,
        adopted_animals)
        VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;'
        values = [@fist_name, @last_name, @address, @email, @phone, @adopted_animals]
        result = SqlRunner.run(sql)
        @id = result[0][id].to_i
      end

      def self.all()
        sql = 'SELECT * FROM owners'
        result = SqlRunner.run(sql)
        return map_owners(result)
      end

      def self.delete_all
      sql = "DELETE FROM owners"
      SqlRunner.run(sql)
    end

    end #end of class
