class WelcomeController < ApplicationController
  def index
  	@movementcatalogs=MovementCatalog.all
    #@movements=Movement.all
    @movement=Movement.new
  	@movementls=MovementCatalog.select('movement_catalogs.id','movement_catalogs.name','movements.quantity').joins('INNER JOIN movements ON movement_catalogs.id=movements.id')
  	#@movementls=
		
  end


  def create
		@movement=Movement.new(movement_params)
		 if @movement.save
		 	redirect_to root_path
		 else
		 	render :new
		 end
	end


private
	def movement_params
	params.require(:movement).permit(:movement_catalogs_id, :quantity)
	end
end


