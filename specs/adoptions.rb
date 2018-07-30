

    require 'minitest/autorun'
    require 'minitest/rg'
    require_relative ('../models/adoptions.rb')

      class TestAdoption < MiniTest::Test

        def setup
          @adoptions = Adoption.new({
            'id' => 'id',
            'owner_id' => 'owner_id'
            'animal_id' => 'animal_id'
            })
        end

      end 
