class MovementCatalog < ActiveRecord::Base
	has_many :movements, foreign_key: "movement_catalogs_id"
end
