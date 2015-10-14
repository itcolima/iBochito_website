class MovementsController < ApplicationController
	def index
		@movement=Movement.new
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
