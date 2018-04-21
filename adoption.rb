

    class Adoption

      def initialize(options)
        @id = options['id']to_i if options['id']
        @animal_id = options['animal_id'].to_i
        @owner_id = options['owner_id'].to_i
      end

    end #end of class
