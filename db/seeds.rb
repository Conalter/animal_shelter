

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
        'email' => 'ricG090@gmail.co.uk',
        'adopted_animals' => 'Lucy'
        })
      owner2.save()

      owner3 = Owner.new({
        'first_name' => 'Domanic',
        'last_name' => 'Delaware',
        'address' => '45, High Road Rd, Partick, Glasgow, G30JR',
        'phone' => '0104387874',
        'email' => 'DD1975@gmail.com',
        'adopted_animals' => 'Pip'
        })
      owner3.save()

      owner4 = Owner.new({
        'first_name' => 'Sheela',
        'last_name' => 'Henderson',
        'address' => '145, Clapton Rd, Kilmarnock, Glasgow, G90 I76',
        'phone' => '0934562234',
        'email' => 'SheelaH@yahoo.co.uk',
        'adopted_animals' => 'Charlie'
        })
      owner4.save()


      animal1 = Animal.new({
        'name' => 'Spot',
        'breed' => 'Dachshund',
        'adoptable' => 'true',
        'admission_date' => '04/09/2017'
        })
      animal1.save()

      animal2 = Animal.new({
        'name' => 'Lucy',
        'breed' => 'Labrador Retriever',
        'adoptable' => 'true',
        'admission_date' => '19/04/2017'
        })
      animal2.save()

      animal3 = Animal.new({
        'name' => 'Charlie',
        'breed' => 'Spaniel',
        'adoptable' => 'true',
        'admission_date' => '02/02/2018'
        })
      animal3.save()

      animal4 = Animal.new({
        'name' => 'Noodle',
        'breed' => 'Mongrel',
        'adoptable' => 'false',
        'admission_date' => '02/04/2018'
        })
      animal4.save()

      animal5 = Animal.new({
        'name' => 'Angel',
        'breed' => 'German Shepherd',
        'adoptable' => 'false',
        'admission_date' => '07/09/2017'
        })
      animal5.save()

      animal6 = Animal.new({
        'name' => 'Pip',
        'breed' => 'Himalayan Sheepdog',
        'adoptable' => 'true',
        'admission_date' => '20/10/2017'
        })
      animal6.save()

      adoption1 = Adoption.new({
        'owner_id' => owner1.id,
        'animal_id' => animal1.id
        })
      adoption1.save()

      adoption2 = Adoption.new({
        'owner_id' => owner2.id,
        'animal_id' => animal2.id
        })
      adoption2.save()

      adoption3 = Adoption.new({
        'owner_id' => owner3.id,
        'animal_id' => animal3.id
        })
      adoption3.save()
