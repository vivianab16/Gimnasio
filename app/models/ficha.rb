class Ficha < ActiveRecord::Base
	belongs_to :centro
	has_many :aprendizs
end
