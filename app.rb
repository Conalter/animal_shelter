

    require( 'sinatra' )
    require( 'sinatra/contrib/all' )
    require_relative('controllers/owners_controller')
    require_relative('controllers/animals_controller')
    require_relative('controllers/adoptions_controller')

    get '/' do
      erb( :landing_page )
    end

    get "/animals" do
      @animals = Animal.all()
      erb(:animal)
    end

    get "/owners" do
      @owners = Owner.all()
      erb(:owner)
    end
