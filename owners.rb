

    class Owner

      def initialize(options)
        @id = options['id'].to_i['id']
        @first_name = options['first_name']
        @last_name = options['last_name']
        @address = options['address']
        @email = options['email']
        @phone = options['phone']
        @adopted_animals = ['adopted_animals']
      end


    end #end of class
