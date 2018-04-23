

    require('sinatra')
    require('sinatra/contrib/all')
    require_relative('../models/owners.rb')

    get '/owners' do
      @owners = Owner.all()
      erb (:"owner")
    end

    get '/owners/:id' do
      @owner = Owner.find(params['id'].to_i)
      erb(:"owners/show")
    end
