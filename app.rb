require './environment'
require './models/pirates.rb'
require './models/ships.rb'

module FormsLab
  class App < Sinatra::Base

  	get "/" do
  		erb :root
  	end

  	get "/new" do
  		erb :"pirates/new"
  	end

    post "/pirates" do
    	
    	@pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
  		params[:pirate][:ships].each do |ship|
  			Ship.new(ship["name"], ship["type"], ship["booty"])
  		end
  		@all_ships = Ship.all
  		@ship_one = @all_ships[0]
  		@ship_two = @all_ships[1]
  		erb :"pirates/show"
  	end
  end
end


