

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
        @phone = options['phone'].to_i
        @adopted_animals = options['adopted_animals']
      end

      def save()
        sql = 'INSERT INTO owners (
        first_name,
        last_name,
        address,
        phone,
        email,
        adopted_animals)
        VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;'
        values = [@first_name, @last_name, @address, @phone, @email, @adopted_animals]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i
      end

      def self.all()
        sql = 'SELECT * FROM owners;'
        result = SqlRunner.run(sql)
        return map_owners(result)
      end

      def self.delete_all()
        sql = 'DELETE FROM owners;'
        SqlRunner.run(sql)
      end

      def self.map_owners(owner_data)
        return owner_data.map {|owner_hash| Owner.new(owner_hash)}
      end

      def self.delete_all()
        sql = 'DELETE FROM owners;'
        SqlRunner.run(sql)
      end

      def self.find_by_id(id)
        sql = 'SELECT * FROM owners WHERE id = $1;'
        value = [id]
        result = SqlRunner.run(sql, value)
        Owner.new(result[0])
      end

    end #end of class
