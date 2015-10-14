class WelcomeController < ApplicationController
  	def index
  		@movementcatalogs=MovementCatalog.all
    	#@movements=Movement.all
    	@movement=Movement.new
  		#@movementls=MovementCatalog.select('movement_catalogs.id','movement_catalogs.name','movements.quantity').joins('INNER JOIN movements ON movement_catalogs.id=movements.movement_catalogs_id')
  		@movementls=MovementCatalog.select('movement_catalogs.name','movements.quantity').joins('INNER JOIN movements ON movement_catalogs.id=movements.movement_catalogs_id')
  	end

end


