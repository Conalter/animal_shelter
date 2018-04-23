

    require 'minitest/autorun'
    require 'minitest/rg'
    require_relative ('../models/animals.rb')

      class TestAnimals < MiniTest::Test

        def setup
          @animal = Animal.new({
            'name' => 'spot',
            'breed' => 'spaniel',
            'adopted' => 'true',
            'admisson_date' => '04/09/2017'
            })
        end

        def test_name
          assert_equal('spot', @animal.name)
        end

        def test_breed
          assert_equal('spaniel', @animal.breed)
        end

        def test_adopted
          assert_equal('true', @animal.adopted)
        end

        def test_admission_date
          assert_equal('04/09/2017', @animal.admission_date)
        end

      end #end of class
