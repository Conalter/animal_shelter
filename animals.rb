

      class Animal

        def initialize(options)
          @id = options['id']to_i if options ['id']
          @name = options['name']
          @breed = options['breed']
          @adoption_date = options['adoption_date']
        end   

      end #end of class
