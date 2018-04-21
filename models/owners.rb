

  require_relative('../db/sql_runner')
  require_relative('animals.rb')

    class Owner

      attr_reader :fist_name, :last_name, :address, :email, :phone, :adopted_animals, :id

      def initialize(options)
        @id = options['id'].to_i['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
        @address = options['address']
        @email = options['email']
        @phone = options['phone']
        @adopted_animals = ['adopted_animals']
      end

      def save()
        sql = 'INSERT INTO owner (
        fist_name,
        last_name,
        address,
        email,
        phone,
        adopted_animals)
        VALUES ($1, $2. $3, $4, $5, $6, $7) RETURNING id;'
        values = [@fist_name, @last_name, @address, @email, @phone, @adopted_animals]
        result = SqlRunner.run(sql)
        @id = result[0][id].to_i
      end

    end #end of class
