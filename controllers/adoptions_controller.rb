

    require('sinatra')
    require('sinatra/contrib/all')
    require_relative('../models/adoption.rb')
    require_relative('../models/owners.rb')
    require_relative('../models/animals.rb')


      get '/adoptions' do
        @adoptions = Adoption.all() #[Adoption1, Adoption3, Adoption3]
        @animal = Animal.all()
        @owner = Owner.all()
        erb (:adoptions)
      end

      post "/adoptions" do
        adoption = Adoption.new(params)
        adoption.save()
        redirect to "/owners"
      end

      get "/adoptions/edit" do
        @adoption = Adoption.find(params[:id])
        erb (:edit_adoption)
      end

      get "/adoptions/edit/:id" do
        @adoptions = Adoption.find(params[:id])
        erb(:edit)
      end

      post '/adoptions/:id/edit' do
        order = Adoption.new(params)
        order.update()
        redirect to "/owners"
      end
