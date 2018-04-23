

    require 'minitest/autorun'
    require 'minitest/rg'
    require_relative ('../models/owners.rb')

      class TestOwner < MiniTest::Test

        def setup
          @owner1 = Owner.new({
            'first_name' => 'Francis',
            'last_name' => 'Gordan',
            'address' => 'Waymouth Dr, Kelvindale, Glasgow, G12 0LH',
            'phone' => '0104 783025',
            'email' => 'f.gordan454@gmail.com',
            'adopted_animals' => 'spot'
            })
          end

        def test_first_name()
          assert_equal('Francis', @owner1.first_name)
        end

        def test_last_name()
          assert_equal('Gordan', @owner1.last_name)
        end

        def test_address()
          assert_equal('Waymouth Dr, Kelvindale, Glasgow, G12 0LH', @owner1.address)
        end

        def test_phone()
          assert_equal('0104783025', @owner1.phone)
        end

        def test_email()
          assert_equal('f.gordan454@gmail.com', @owner1.email)
        end

        def test_adopted_animals()
          assert_equal('spot', @owner1.adopted_animals)
        end

      end #end of class
