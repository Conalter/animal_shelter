

    require('sinatra')
    require('sinatra/contrib/all')
    require_relative('../models/owners.rb')
    require_relative('../models/adoption.rb')

    get '/owners' do
      @adoptions = Adoption.all()
      erb (:"owner")
    end

    get '/owners/:id' do
      @owner = Owner.find(params['id'].to_i)
      erb(:"owners/show")
    end
