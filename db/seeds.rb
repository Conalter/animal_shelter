

    require_relative('../models/animals')
    require_relative('../models/owners')
    require_relative('../models/adoption')

    require('pry-byebug')

    Adoption.delete_all()
    Animal.delete_all()
    Owner.delete_all()

      owner1 = Owner.new({
        'first_name' => 'Francis',
        'last_name' => 'Gordan',
        'address' => 'Waymouth Dr, Kelvindale, Glasgow, G12 0LH',
        'phone' => '0104783025',
        'email' => 'f.gordan454@gmail.com',
        'adopted_animals' => 'Spot'
        })
        owner1.save()

      owner2 = Owner.new({
        'first_name' => 'Richard',
        'last_name' => 'Greenwood',
        'address' => '34, Tantallan Rd, Shawlands, Glasgow, G20 0DD',
        'phone' => '0104520387',
        'email' => 'ricG090@gmail.com',
        'adopted_animals' => 'Lucy'
        })
      owner2.save()

      owner3 = Owner.new({
        'first_name' => 'Domanic',
        'last_name' => 'Delaware',
        'address' => '45, High Road Rd, Partick, Glasgow, G30JR',
        'phone' => '0104387874',
        'email' => 'DD1975@gmail.com',
        'adopted_animals' => 'Charlie'
        })
      owner3.save()


      animal1 = Animal.new({
        'name' => 'Spot',
        'breed' => 'dachshund',
        'adoptable' => 'true',
        'admisson_date' => '04/09/2017'
        })
      animal1.save()

      animal2 = Animal.new({
        'name' => 'Lucy',
        'breed' => 'labrador retriever',
        'adoptable' => 'true',
        'admisson_date' => '19/04/2017'
        })
      animal2.save()

      animal3 = Animal.new({
        'name' => 'Charlie',
        'breed' => 'spaniel',
        'adoptable' => 'true',
        'admisson_date' => '02/02/2018'
        })
      animal3.save()


      adoption1 = Adoption.new({
        'owner_id' => 'owner.id',
        'animal_id' => 'animal.id',
        })
      adoption1.save()

      adoption2 = Adoption.new({
        'owner_id' => 'owner.id',
        'animal_id' => 'animal.id',
        })
      adoption2.save()

      adoption3 = Adoption.new({
        'owner_id' => 'owner.id',
        'animal_id' => 'animal.id',
        })
      adoption3.save()

    binding.pry
    nil
