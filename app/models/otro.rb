class Otro < ActiveRecord::Base
  belongs_to :cargo

	validates :nombre, :presence => true 
	validates :apellido, :presence => true
	validates :doc, :presence => true
	validates :cargo, :presence => true

end