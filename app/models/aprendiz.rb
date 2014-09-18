class Aprendiz < ActiveRecord::Base
  belongs_to :centro
  belongs_to :ficha
end
